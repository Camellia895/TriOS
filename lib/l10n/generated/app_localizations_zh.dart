// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String aboutTagline(Object appName) {
    return '$appName 是一个模组管理器、启动器和工具箱。\n使用 Dart/Flutter 编写。';
  }

  @override
  String get aboutForumThread => '论坛帖子';

  @override
  String get aboutSourceCode => '源代码';

  @override
  String get aboutPrivacyPolicy => '隐私政策';

  @override
  String aboutPrivacySentry(Object appName) {
    return '• 如果你选择允许，设备信息（如操作系统和屏幕分辨率）、模组列表以及 $appName 的错误信息将被收集并上传到由 Sentry.io 管理的服务器。这些信息与随机生成的 id 关联，用于修复漏洞。收集数据示例：https://i.imgur.com/k9E6zxO.png。';
  }

  @override
  String aboutPrivacyNoAllow(Object appName) {
    return '• 如果不允许，$appName 仅在版本检查器更新、模组更新、下载模组目录文件等明显需要联网的场景使用网络。';
  }

  @override
  String get aboutPrivacyNoPersonal =>
      '• 任何时候都不会收集个人信息。我不知道你是谁、你在哪里、你的用户名是什么等等。';

  @override
  String get aboutAiDisclosure => 'AI 使用披露';

  @override
  String aboutAiCatalog(Object appName) {
    return '• AI 用于辅助生成模组目录（$appName 下载并显示的文本文件），方式是发送论坛页面的 HTML 内容。这用于一些没有 AI 很难完成的处理，例如：';
  }

  @override
  String get aboutAiDetectMods => '识别并提取同一论坛页面上的多个模组。';

  @override
  String get aboutAiChangelogs => '论坛页面上的更新日志。';

  @override
  String get aboutAiDetectLinks => '识别并归类更多种类的下载链接。论坛页面上不存在的链接会被忽略（防止幻觉）。';

  @override
  String get aboutAiSummaries => '生成模组摘要。';

  @override
  String aboutAiWritesApp(Object appName) {
    return '• AI 用于辅助编写 $appName。';
  }

  @override
  String get aboutAiModContent => '• 除编写代码时自动发送的内容外，不会向 AI 发送模组内容。';

  @override
  String aboutAiNoService(Object appName) {
    return '• $appName 本身不使用也不联系任何 AI 服务。';
  }
}
