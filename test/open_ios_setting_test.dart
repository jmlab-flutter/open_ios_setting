import 'package:flutter_test/flutter_test.dart';
import 'package:open_ios_setting/open_ios_setting_platform_interface.dart';
import 'package:open_ios_setting/open_ios_setting_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenIosSettingPlatform with MockPlatformInterfaceMixin implements OpenIosSettingPlatform {
  @override
  Future<void> openSettingHome() => Future.value();
}

void main() {
  final OpenIosSettingPlatform initialPlatform = OpenIosSettingPlatform.instance;

  test('$MethodChannelOpenIosSetting is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenIosSetting>());
  });
}
