import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:core_module/core_module_method_channel.dart';

void main() {
  MethodChannelCoreModule platform = MethodChannelCoreModule();
  const MethodChannel channel = MethodChannel('core_module');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
