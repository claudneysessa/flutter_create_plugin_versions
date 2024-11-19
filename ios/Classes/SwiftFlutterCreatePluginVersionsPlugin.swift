import Flutter
import UIKit

public class SwiftFlutterCreatePluginVersionsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_create_plugin_versions", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterCreatePluginVersionsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
