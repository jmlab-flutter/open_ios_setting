import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_ios_setting_platform_interface.dart';

/// An implementation of [OpenIosSettingPlatform] that uses method channels.
class MethodChannelOpenIosSetting extends OpenIosSettingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_ios_setting');

  /// 打开 iOS 设置首页
  @override
  Future<void> openSettingHome() async {
    await methodChannel.invokeMethod<void>('openSettingHome');
  }
}
