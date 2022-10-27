import 'package:flutter_test/flutter_test.dart';
import 'package:home_module/home_module.dart';
import 'package:home_module/home_module_platform_interface.dart';
import 'package:home_module/home_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHomeModulePlatform
    with MockPlatformInterfaceMixin
    implements HomeModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HomeModulePlatform initialPlatform = HomeModulePlatform.instance;

  test('$MethodChannelHomeModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHomeModule>());
  });

  test('getPlatformVersion', () async {
    HomeModule homeModulePlugin = HomeModule();
    MockHomeModulePlatform fakePlatform = MockHomeModulePlatform();
    HomeModulePlatform.instance = fakePlatform;

    expect(await homeModulePlugin.getPlatformVersion(), '42');
  });
}
