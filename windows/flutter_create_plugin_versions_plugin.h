#ifndef FLUTTER_PLUGIN_FLUTTER_CREATE_PLUGIN_VERSIONS_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_CREATE_PLUGIN_VERSIONS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_create_plugin_versions {

class FlutterCreatePluginVersionsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterCreatePluginVersionsPlugin();

  virtual ~FlutterCreatePluginVersionsPlugin();

  // Disallow copy and assign.
  FlutterCreatePluginVersionsPlugin(const FlutterCreatePluginVersionsPlugin&) = delete;
  FlutterCreatePluginVersionsPlugin& operator=(const FlutterCreatePluginVersionsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_create_plugin_versions

#endif  // FLUTTER_PLUGIN_FLUTTER_CREATE_PLUGIN_VERSIONS_PLUGIN_H_
