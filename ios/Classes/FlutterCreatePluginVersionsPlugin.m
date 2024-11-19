#import "FlutterCreatePluginVersionsPlugin.h"
#if __has_include(<flutter_create_plugin_versions/flutter_create_plugin_versions-Swift.h>)
#import <flutter_create_plugin_versions/flutter_create_plugin_versions-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_create_plugin_versions-Swift.h"
#endif

@implementation FlutterCreatePluginVersionsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCreatePluginVersionsPlugin registerWithRegistrar:registrar];
}
@end
