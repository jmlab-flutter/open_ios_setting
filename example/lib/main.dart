import 'package:flutter/material.dart';
import 'package:open_ios_setting/open_ios_setting.dart';

void main() {
  runApp(const MyApp());
}

/// 示例应用
class MyApp extends StatelessWidget {
  /// 构造函数
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final openIosSettingPlugin = OpenIosSetting();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('OpenIosSetting Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () => openIosSettingPlugin.openSettingHome(),
            child: const Text('打开 iOS 设置首页'),
          ),
        ),
      ),
    );
  }
}
