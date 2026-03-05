import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_ios_setting_method_channel.dart';

abstract class OpenIosSettingPlatform extends PlatformInterface {
  /// Constructs a OpenIosSettingPlatform.
  OpenIosSettingPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenIosSettingPlatform _instance = MethodChannelOpenIosSetting();

  /// The default instance of [OpenIosSettingPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenIosSetting].
  static OpenIosSettingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenIosSettingPlatform] when
  /// they register themselves.
  static set instance(OpenIosSettingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// 打开 iOS 设置首页
  Future<void> openSettingHome() {
    throw UnimplementedError('openSettingHome() has not been implemented.');
  }
}
