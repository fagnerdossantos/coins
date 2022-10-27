import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'home_module_method_channel.dart';

abstract class HomeModulePlatform extends PlatformInterface {
  /// Constructs a HomeModulePlatform.
  HomeModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static HomeModulePlatform _instance = MethodChannelHomeModule();

  /// The default instance of [HomeModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelHomeModule].
  static HomeModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HomeModulePlatform] when
  /// they register themselves.
  static set instance(HomeModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
