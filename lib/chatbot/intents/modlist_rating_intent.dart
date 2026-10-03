import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/chipper/utils.dart';
import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';

/// Reviews the user's enabled modlist with opinionated, snarky commentary.
class ModlistRatingIntent extends ChatIntent with ModAwareIntent {
  @override
  final Ref ref;

  ModlistRatingIntent(this.ref);

  static const _phrases = [
    'rate my modlist',
    'rate my mods',
    'modlist rating',
    'judge my mods',
    'how good is my modlist',
    'grade my mods',
    'roast my mods',
    'review my mods',
    'what do you think of my mods',
    'rate modlist',
    'judge modlist',
    'roast modlist',
  ];

  static const _primaryKeywords = {
    'rate': 0.5,
    'rating': 0.5,
    'roast': 0.5,
    'judge': 0.45,
    'grade': 0.45,
    'review': 0.4,
  };

  static const _secondaryKeywords = {
    'modlist': 0.2,
    'mods': 0.15,
    'mod': 0.1,
    'my': 0.05,
    'think': 0.1,
    'good': 0.1,
    'opinion': 0.15,
  };

  @override
  String get id => 'modlist_rating';

  @override
  double match(String input, ConversationContext context) {
    return ModAwareIntent.scoreInput(
      input,
      _phrases,
      _primaryKeywords,
      _secondaryKeywords,
    );
  }

  @override
  ChatResponse respond(String input, ConversationContext context) {
    final guard = guardModData();
    if (guard != null) return guard;

    final enabledMods = mods.where((m) => m.isEnabledInGame).toList();

    if (enabledMods.isEmpty) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotYouHaveZeroMods,
      );
    }

    final enabledIds = <String>{};
    final recognizedEntries = <String>[];
    final unrecognizedNames = <String>[];
    var factionCount = 0;
    var libraryCount = 0;
    var qolCount = 0;

    for (final mod in enabledMods) {
      final variant = mod.findFirstEnabled;
      if (variant == null) continue;

      final modId = variant.modInfo.id;
      final name = variant.modInfo.nameOrId;
      enabledIds.add(modId);

      final opinion = _modOpinions[modId];
      if (opinion != null) {
        recognizedEntries.add('  ${opinion.resolve()}');
        switch (opinion.tier) {
          case _Tier.library:
            libraryCount++;
          case _Tier.faction:
            factionCount++;
          case _Tier.qol:
            qolCount++;
          case _Tier.gameplay:
          case _Tier.content:
          case _Tier.meme:
            break;
        }
      } else {
        unrecognizedNames.add(name);
        if (variant.modInfo.isUtility) {
          libraryCount++;
        } else if (variant.modInfo.isTotalConversion) {
          factionCount++;
        }
      }
    }

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(
      loc.chatbotModlistReviewHeader(enabledMods.length),
    );

    // Show recognized mods first (capped at 15).
    const maxDisplay = 15;
    for (final entry in recognizedEntries.take(maxDisplay)) {
      buf.writeln(entry);
    }
    if (recognizedEntries.length > maxDisplay) {
      buf.writeln(
        '  ' +
            loc.chatbotAndNMoreOpinions(
              recognizedEntries.length - maxDisplay,
            ),
      );
    }

    // Unrecognized mods.
    if (unrecognizedNames.isNotEmpty) {
      if (unrecognizedNames.length <= 3) {
        for (final name in unrecognizedNames) {
          buf.writeln(
            '  ' + loc.chatbotUnknownModLine(name),
          );
        }
      } else {
        buf.writeln(
          '  ' + loc.chatbotPlusUnrecognized(unrecognizedNames.length),
        );
      }
    }

    // Combo roasts.
    final combos = _detectCombos(enabledIds, factionCount);
    if (combos.isNotEmpty) {
      buf.writeln();
      // for (final combo in combos) {
        buf.writeln('  ${combos.random()}');
      // }
    }

    // Overall verdict.
    buf.writeln();
    buf.write(_generateVerdict(
      enabledMods.length,
      recognizedEntries.length,
      unrecognizedNames.length,
      factionCount,
      libraryCount,
      qolCount,
      enabledIds,
    ));

    return ChatResponse(text: buf.toString().trimRight());
  }

  List<String> _detectCombos(Set<String> ids, int factionCount) {
    final loc = AppLocalizationsSync.instance;
    final combos = <String>[];

    if (ids.contains('shaderLib') && factionCount >= 6) {
      combos.add(loc.chatbotComboGraphicsLib(factionCount));
    }

    if (ids.contains('nexerelin') && factionCount >= 8) {
      combos.add(loc.chatbotComboNexFactions(factionCount));
    }

    if (!ids.contains('nexerelin') && factionCount >= 4) {
      combos.add(loc.chatbotComboNexerelinExpected);
    } else if (!ids.contains('nexerelin')) {
      combos.add(loc.chatbotComboNoNex);
    }

    if (ids.contains('lw_console') && ids.contains('nexerelin')) {
      combos.add(loc.chatbotComboConsoleNex);
    }

    final contentMods = ids.length -
        ids.where((id) => _modOpinions[id]?.tier == _Tier.library).length;
    if (ids.length >= 5 && contentMods <= 2) {
      combos.add(loc.chatbotComboLibraryOnly);
    }

    return combos;
  }

  String _generateVerdict(
    int totalEnabled,
    int recognizedCount,
    int unrecognizedCount,
    int factionCount,
    int libraryCount,
    int qolCount,
    Set<String> enabledIds,
  ) {
    final hasNex = enabledIds.contains('nexerelin');
    final hasGraphics = enabledIds.contains('shaderLib');
    final recognizedRatio =
        totalEnabled > 0 ? recognizedCount / totalEnabled : 0.0;

    // Base score out of 10.
    var score = 5;

    if (hasNex) score += 1;
    if (hasGraphics) score += 1;
    if (factionCount >= 3) score += 1;
    if (recognizedRatio > 0.6) score += 1;
    if (totalEnabled >= 10) score += 1;
    if (factionCount >= 10) score -= 1; // bloat penalty
    if (unrecognizedCount > recognizedCount) score -= 1;
    score = score.clamp(1, 10);

    final loc = AppLocalizationsSync.instance;
    final verdict = switch (score) {
      10 => loc.chatbotVerdict10,
      9 => loc.chatbotVerdict9,
      8 => loc.chatbotVerdict8,
      7 => loc.chatbotVerdict7,
      6 => loc.chatbotVerdict6,
      5 => loc.chatbotVerdict5,
      4 => loc.chatbotVerdict4,
      3 => loc.chatbotVerdict3,
      2 => loc.chatbotVerdict2,
      _ => loc.chatbotVerdict1,
    };

    return loc.chatbotVerdictLine(score, verdict);
  }
}

enum _Tier { library, gameplay, faction, content, qol, meme }

class _ModOpinion {
  final String Function() comment;
  final _Tier tier;

  const _ModOpinion(this.comment, this.tier);

  String resolve() => comment();
}

final _modOpinions = <String, _ModOpinion>{

  // === Libraries ===
  'lw_lazylib': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionLazyLib,
    _Tier.library,
  ),
  'MagicLib': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionMagicLib,
    _Tier.library,
  ),
  'shaderLib': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionGraphicsLib,
    _Tier.library,
  ),
  'lunalib': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionLunaLib,
    _Tier.library,
  ),
  // === Major gameplay ===
  'nexerelin': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionNexerelin,
    _Tier.gameplay,
  ),
  'IndEvo': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionIndEvo,
    _Tier.gameplay,
  ),
  'sun_starship_legends': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionStarshipLegends,
    _Tier.gameplay,
  ),
  'second_in_command': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionSecondInCommand,
    _Tier.gameplay,
  ),
  'officer_extension': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionOfficerExtension,
    _Tier.gameplay,
  ),
  'kcmods_knightsofludd': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionKnightsOfLudd,
    _Tier.gameplay,
  ),
  'RealisticCombat': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionRealisticCombat,
    _Tier.gameplay,
  ),
  'RandomAssortmentOfThings': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionRaot,
    _Tier.gameplay,
  ),
  // === Faction mods ===
  'diableavionics': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionDiableAvionics,
    _Tier.faction,
  ),
  'blackrock_driveyards': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionBlackrock,
    _Tier.faction,
  ),
  'SCY': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionScy,
    _Tier.faction,
  ),
  'shadowyards': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionShadowyards,
    _Tier.faction,
  ),
  'tahlan': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionTahlan,
    _Tier.faction,
  ),
  'arkgneisis': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionArkgneisis,
    _Tier.faction,
  ),
  'ORA': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionOra,
    _Tier.faction,
  ),
  'al_ruk': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionAlRuk,
    _Tier.faction,
  ),
  'mayorate': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionMayorate,
    _Tier.faction,
  ),
  'kadur_remnant': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionKadur,
    _Tier.faction,
  ),
  'dassault_mikoyan': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionDassaultMikoyan,
    _Tier.faction,
  ),
  'perseanchronicles': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionPersean,
    _Tier.faction,
  ),
  'vayra': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionVayra,
    _Tier.faction,
  ),
  'torchships': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionTorchships,
    _Tier.faction,
  ),
  'roider': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionRoider,
    _Tier.faction,
  ),
  'apex_design': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionApexDesign,
    _Tier.faction,
  ),
  'eis': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionEis,
    _Tier.faction,
  ),
  // === Content / ship packs ===
  'swp': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionSwp,
    _Tier.content,
  ),
  'dmods': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionDmods,
    _Tier.content,
  ),
  'arsenalExpansion': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionArsenalExpansion,
    _Tier.content,
  ),
  'armaa': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionArmaa,
    _Tier.content,
  ),
  'unknownSkies': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionUnknownSkies,
    _Tier.content,
  ),
  'more_portrait': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionMorePortraits,
    _Tier.content,
  ),
  // === QoL ===
  'lw_console': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionConsoleCommands,
    _Tier.qol,
  ),
  'autosave': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionAutosave,
    _Tier.qol,
  ),
  'common_radar': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionCommonRadar,
    _Tier.qol,
  ),
  'lw_version_checker': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionVersionChecker,
    _Tier.qol,
  ),
  'more_ship_names': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionMoreShipNames,
    _Tier.qol,
  ),
  'speedUp': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionSpeedUp,
    _Tier.qol,
  ),
  'transponder_off': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionTransponderOff,
    _Tier.qol,
  ),
  'detailedcombatresults': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionDetailedCombatResults,
    _Tier.qol,
  ),
  'leading_pip': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionLeadingPip,
    _Tier.qol,
  ),
  'nexerelin_wardashboard': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionWarDashboard,
    _Tier.qol,
  ),
  // === Total conversions ===
  'swfactions': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionStarWars,
    _Tier.faction,
  ),
  // === Meme / niche ===
  'vram_vore': _ModOpinion(
    () => AppLocalizationsSync.instance.chatbotOpinionVramVore,
    _Tier.meme,
  ),
};
