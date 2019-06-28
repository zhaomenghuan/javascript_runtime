import 'dart:async';

import 'package:flutter/services.dart';

class JavascriptRuntime {
  static const MethodChannel _channel =
      const MethodChannel('javascript_runtime');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
