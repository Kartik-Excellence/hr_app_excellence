import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'homescreen_test.dart';

void loginTest(FlutterDriver flutterDriver) async {
  group('Login Test/', () {
    final emailMsg = find.byValueKey('email');
    final psswordMsg = find.byValueKey('password');

    setUpAll(() async {
      flutterDriver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (flutterDriver != null) {
        flutterDriver.close();
      }
    });

    test('Form Fill/', () async {
      await flutterDriver.tap(emailMsg);
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.enterText('kartikjabreba');
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.tap(psswordMsg);
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.enterText('CMJ97');
    });

    test('Button Test/', () async {
      await flutterDriver.tap(find.byType("FlatButton"));
      await Future.delayed(Duration(seconds: 2));
    });

    
  });
}
