import 'package:flutter_test/flutter_test.dart';
import 'package:core_module/core_module.dart';
import 'package:core_module/core_module_platform_interface.dart';
import 'package:core_module/core_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCoreModulePlatform
    with MockPlatformInterfaceMixin
    implements CoreModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CoreModulePlatform initialPlatform = CoreModulePlatform.instance;

  test('$MethodChannelCoreModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCoreModule>());
  });

  test('getPlatformVersion', () async {
    CoreModule coreModulePlugin = CoreModule();
    MockCoreModulePlatform fakePlatform = MockCoreModulePlatform();
    CoreModulePlatform.instance = fakePlatform;

    expect(await coreModulePlugin.getPlatformVersion(), '42');
  });
}
