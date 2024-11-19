import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_create_plugin_versions_platform_interface.dart';

/// An implementation of [FlutterCreatePluginVersionsPlatform] that uses method channels.
class MethodChannelFlutterCreatePluginVersions extends FlutterCreatePluginVersionsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_create_plugin_versions');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
