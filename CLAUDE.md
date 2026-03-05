# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

`open_ios_setting` 是一个 Flutter 插件，用于在 iOS 平台上打开系统设置页面。仅支持 iOS 平台，通过 Method Channel 与原生 Swift 代码通信。

## 项目架构

采用 Flutter 插件标准的 Federated Plugin 架构：

- `lib/open_ios_setting.dart` - 对外暴露的 API 类 `OpenIosSetting`
- `lib/open_ios_setting_platform_interface.dart` - 平台接口抽象类 `OpenIosSettingPlatform`
- `lib/open_ios_setting_method_channel.dart` - Method Channel 实现类 `MethodChannelOpenIosSetting`
- `ios/Classes/OpenIosSettingPlugin.swift` - iOS 原生插件实现（Swift）
- `example/` - 示例应用

Method Channel 名称：`open_ios_setting`

## API 方法

| 方法 | 说明 | Method Channel 调用 |
|------|------|-------------------|
| `getPlatformVersion()` | 获取 iOS 平台版本 | `getPlatformVersion` |
| `openSettingHome()` | 打开 iOS 设置首页 | `openSettingHome` |

## 常用命令

```bash
# 语法检查
dart analyze

# 代码格式化
dart format . --line-length=120

# 运行单元测试
flutter test

# 运行单个测试文件
flutter test test/open_ios_setting_test.dart

# 验证 podspec
pod lib lint ios/open_ios_setting.podspec

# 运行示例应用（需在 example 目录）
cd example && flutter run
```

## 开发注意事项

- iOS 最低支持版本：13.0
- Swift 版本：5.0
- Dart SDK：^3.10.1
- Flutter：>=3.3.0
- 代码风格：使用 `flutter_lints` 规范
- 格式化时必须加 `--line-length=120` 参数
- 新增 API 方法需同步修改四个文件：`open_ios_setting.dart`、`open_ios_setting_platform_interface.dart`、`open_ios_setting_method_channel.dart`、`OpenIosSettingPlugin.swift`
- 新增方法后需在测试文件的 Mock 类中补充实现
