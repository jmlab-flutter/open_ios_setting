import Flutter
import UIKit

public class OpenIosSettingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "open_ios_setting", binaryMessenger: registrar.messenger())
    let instance = OpenIosSettingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "openSettingHome":
      // 打开 iOS 设置首页
      if let url = URL(string: "App-Prefs:") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
      }
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
