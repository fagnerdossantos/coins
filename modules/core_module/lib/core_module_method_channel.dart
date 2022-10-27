import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'core_module_platform_interface.dart';

/// An implementation of [CoreModulePlatform] that uses method channels.
class MethodChannelCoreModule extends CoreModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('core_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
