import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_create_plugin_versions/flutter_create_plugin_versions_method_channel.dart';

void main() {
  MethodChannelFlutterCreatePluginVersions platform = MethodChannelFlutterCreatePluginVersions();
  const MethodChannel channel = MethodChannel('flutter_create_plugin_versions');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
