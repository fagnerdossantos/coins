import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'core_module_method_channel.dart';

abstract class CoreModulePlatform extends PlatformInterface {
  /// Constructs a CoreModulePlatform.
  CoreModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static CoreModulePlatform _instance = MethodChannelCoreModule();

  /// The default instance of [CoreModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelCoreModule].
  static CoreModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CoreModulePlatform] when
  /// they register themselves.
  static set instance(CoreModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
