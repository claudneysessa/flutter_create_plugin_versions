
import 'flutter_create_plugin_versions_platform_interface.dart';

class FlutterCreatePluginVersions {
  Future<String?> getPlatformVersion() {
    return FlutterCreatePluginVersionsPlatform.instance.getPlatformVersion();
  }
}
