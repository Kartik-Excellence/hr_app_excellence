import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'forgotpassword_test.dart';
import 'login_test.dart';

void main() {
  group('Hr App', () {
    FlutterDriver flutterDriver;
    setUpAll(() async {
      flutterDriver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (flutterDriver != null) {
        flutterDriver.close();
      }
    });
    loginTest();
    forgotPasswordTest();
  });
}
