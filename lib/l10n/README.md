# TriOS i18n（官方 gen-l10n 路线）

本目录是 TriOS 的本地化框架。模板语言为英文（`app_en.arb`），当前支持简体中文（`app_zh.arb`）。

## 工作原理

- `l10n.yaml`（仓库根）配置生成器；`flutter gen-l10n`（或任意 `flutter pub get`，因 pubspec 里 `generate: true`）把 ARB 编译成 `lib/l10n/generated/app_localizations*.dart`。生成文件随仓库提交（本仓库惯例），CI 不需要额外步骤。
- `MaterialApp`（`lib/main.dart`）传入 `locale`（来自 `appLocaleProvider` ← `Settings.locale`）、`supportedLocales`、`localizationsDelegates: [SyncAppLocalizationsDelegate()]`。语言切换时 `Localizations` 自动把新语言传播到整个 widget 树，无需重启应用。

## 在 widget 里取词

```dart
final loc = AppLocalizations.of(context); // nullable-getter: false，非空
Text(loc.aboutTagline(context.appName)),
```

键名建议 `页面/模块前缀 + 语义`（camelCase），例如 `aboutPrivacyPolicy`、`modsGridShowDataWarnings`。

## 在逻辑层取词（无 BuildContext）

控制器/服务里生成的用户可见文本用静态实例：

```dart
import 'package:trios/l10n/trios_localizations.dart';

AppLocalizationsSync.instance.someMessage;
```

`SyncAppLocalizationsDelegate` 在每次 locale 加载时把实例记录到 `AppLocalizationsSync`；应用启动后、首次加载前的极小窗口期回退为系统 locale 查找。

## 占位符与插值

ARB 里用 `{name}` 占位并声明 `placeholders`，调用时传参：

```json
"loadedMods": "Loaded {count} mods",
"@loadedMods": { "placeholders": { "count": {} } }
```

```dart
Text(loc.loadedMods(count));
```

复数极少出现；需要时用 ICU 复数语法（`plural`）或按条件选键。

## 添加新语言

1. 复制 `app_en.arb` 为 `app_<code>.arb` 并翻译（`@@locale` 填语言码）。
2. 在 `lib/l10n/trios_localizations.dart` 的语言选择器（settings_page 的 `_LanguageDropdownRow`）里加选项。
3. 重跑 `flutter gen-l10n`。

## 汉化翻译工作流（对接 CSV 流水线）

1. `python tool/l10n/extract_strings.py` — 扫描 `lib/`，产出待译清单 `tool/l10n/census.csv`（file:line / 英文原文 / 建议键名 / 是否含插值）。
2. 译者填 `zh` 列。
3. `python tool/l10n/csv_to_arb.py` — 把 CSV 合并进 `app_zh.arb`（幂等，保留既有键）。
4. `flutter gen-l10n` 重新生成。

## 已知限制

- `material_ui` 自带的 `DefaultMaterialLocalizations` 只支持英文，Material 内置文案（日期选择器等）不随语言切换；我们自己 gen 的 `AppLocalizations` 不受影响。
- `lib/trios/constants.dart` 里的静态 `DateFormat` 在启动时按当时的 locale 创建，切换语言后需重启才会更新日期格式。
- 上游英文文案改动不会自动同步到 `app_zh.arb`；重跑 `extract_strings.py` 的对比即可发现漂移（译文缺失处自动回退显示英文，缺译是自显现的）。
