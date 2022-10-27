import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'home_module_platform_interface.dart';

/// An implementation of [HomeModulePlatform] that uses method channels.
class MethodChannelHomeModule extends HomeModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('home_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
