import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sms_method_channel.dart';

abstract class FlutterSmsPlatform extends PlatformInterface {
  /// Constructs a FlutterSmsPlatform.
  FlutterSmsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSmsPlatform _instance = MethodChannelFlutterSms();

  /// The default instance of [FlutterSmsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSms].
  static FlutterSmsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSmsPlatform] when
  /// they register themselves.
  static set instance(FlutterSmsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> sendSms({
    required String recipient,
    required String message,
    required int slot,
  }) {
    throw UnimplementedError('sendSms() has not been implemented.');
  }
}
