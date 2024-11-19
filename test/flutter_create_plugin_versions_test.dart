import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_create_plugin_versions/flutter_create_plugin_versions.dart';

void main() {
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
    expect(await FlutterCreatePluginVersions.platformVersion, '42');
  });
}
