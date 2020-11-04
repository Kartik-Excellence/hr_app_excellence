import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'login_test.dart';

void homeScreenTest(FlutterDriver driver) async {
  print('Testing for App Drawer');
  group('Home Screen Test/', () {
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    loginTest(driver);

    test('Home Screen/', () async {
      await driver.waitFor(find.text('All employee information at one page'));
      await Future.delayed(Duration(seconds: 2));
    });

    //  test('app drawer 4', () async {
    //   await driver.waitFor(find.byType("AppBar"));
    //   await Future.delayed(Duration(seconds: 2));
    // });

    // test('App Drawer 1', () async {
    //   await driver.waitFor(find.byType("AppBar"));
    //   await Future.delayed(Duration(seconds: 2));

    // });

    test('App Drawer 2', () async {
      final SerializableFinder app = find.byValueKey('NavigationLIst');
      await driver.scroll(app, 300.0, 0.0, const Duration(milliseconds: 300));
    });

    // test('app drawer 2', () async {
    //   await driver.waitFor(find.byType("drawer"));
    //   await Future.delayed(Duration(seconds: 2));
    // });

    // test('app drawer 3', () async {
    //   await driver.waitFor(find.byType("NavigationList"));
    //   await Future.delayed(Duration(seconds: 2));
    // });
  });
}
