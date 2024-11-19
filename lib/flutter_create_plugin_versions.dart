
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCreatePluginVersions {
  static const MethodChannel _channel =
      const MethodChannel('flutter_create_plugin_versions');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}