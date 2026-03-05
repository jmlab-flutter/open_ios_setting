# open_ios_setting

A Flutter plugin for opening iOS system settings pages.

一个用于打开 iOS 系统设置页面的 Flutter 插件。

## Platform Support

| iOS |
|:---:|
| ✅  |

## Installation

```yaml
dependencies:
  open_ios_setting: ^0.0.2
```

## Usage

```dart
import 'package:open_ios_setting/open_ios_setting.dart';

final openIosSetting = OpenIosSetting();

// Open iOS Settings home page
await openIosSetting.openSettingHome();
```

## API

| Method | Description | Return |
|--------|-------------|--------|
| `openSettingHome()` | Open iOS Settings home page | `Future<void>` |

## Requirements

- Flutter >= 3.3.0
- Dart SDK >= 3.10.1
- iOS >= 13.0

## License

MIT License. See [LICENSE](LICENSE) for details.
