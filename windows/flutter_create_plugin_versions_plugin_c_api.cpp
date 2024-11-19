#include "include/flutter_create_plugin_versions/flutter_create_plugin_versions_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_create_plugin_versions_plugin.h"

void FlutterCreatePluginVersionsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_create_plugin_versions::FlutterCreatePluginVersionsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
