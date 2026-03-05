// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:open_ios_setting/open_ios_setting.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('openSettingHome test', (WidgetTester tester) async {
    final OpenIosSetting plugin = OpenIosSetting();
    // 验证调用不会抛出异常
    await plugin.openSettingHome();
  });
}
