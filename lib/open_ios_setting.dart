import 'open_ios_setting_platform_interface.dart';

/// iOS 设置页面打开工具类
class OpenIosSetting {
  /// 获取平台版本
  Future<String?> getPlatformVersion() {
    return OpenIosSettingPlatform.instance.getPlatformVersion();
  }

  /// 打开 iOS 设置首页
  Future<void> openSettingHome() {
    return OpenIosSettingPlatform.instance.openSettingHome();
  }
}
