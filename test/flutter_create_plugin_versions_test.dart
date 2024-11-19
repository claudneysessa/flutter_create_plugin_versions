import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_create_plugin_versions/flutter_create_plugin_versions.dart';
import 'package:flutter_create_plugin_versions/flutter_create_plugin_versions_platform_interface.dart';
import 'package:flutter_create_plugin_versions/flutter_create_plugin_versions_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCreatePluginVersionsPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterCreatePluginVersionsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCreatePluginVersionsPlatform initialPlatform = FlutterCreatePluginVersionsPlatform.instance;

  test('$MethodChannelFlutterCreatePluginVersions is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCreatePluginVersions>());
  });

  test('getPlatformVersion', () async {
    FlutterCreatePluginVersions flutterCreatePluginVersionsPlugin = FlutterCreatePluginVersions();
    MockFlutterCreatePluginVersionsPlatform fakePlatform = MockFlutterCreatePluginVersionsPlatform();
    FlutterCreatePluginVersionsPlatform.instance = fakePlatform;
  
    expect(await flutterCreatePluginVersionsPlugin.getPlatformVersion(), '42');
  });
}
