import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_ios_setting/open_ios_setting_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOpenIosSetting platform = MethodChannelOpenIosSetting();
  const MethodChannel channel = MethodChannel('open_ios_setting');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, (
      MethodCall methodCall,
    ) async {
      return null;
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('openSettingHome', () async {
    // 验证调用不会抛出异常
    await platform.openSettingHome();
  });
}
