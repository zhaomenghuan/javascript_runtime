import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:javascript_runtime/javascript_runtime.dart';

void main() {
  const MethodChannel channel = MethodChannel('javascript_runtime');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await JavascriptRuntime.platformVersion, '42');
  });
}
