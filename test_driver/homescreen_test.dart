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
    });

    test('App Drawer /', () async {
      await driver.waitFor(find.byType("Scaffold"));
      await driver.tap(find.byValueKey('opendrawer'));
      await Future.delayed(Duration(seconds: 2));
    });
    test('AppDrawer 1/', () async {
      await driver.waitFor(find.byTooltip('Navigation'));
    });

    test('AppDrawer 2/', () async {
      await driver.waitFor(find.byValueKey('opendrawer'));
    });

    test('AppDrawer 3/', () async {
      await driver.waitFor(find.byType("Container"));
    });
    // test('App Drawer 1/', () async {
    //  await driver.tap(find.byType("Container"));
    //  // await driver.tap(locateDrawer);
    // });

    // test('App Drawer 2/', () async {
    // //  await driver.tap(find.byValueKey('opendrawer'));
    //  // await driver.tap(locateDrawer);
    // });

    //  final SerializableFinder locateDrawer = find.byType("NavigationList");
    //   test('App Drawer 1/', () async {
    //     await driver.waitFor(find.byType("Scaffold"));
    //     await driver.tap(find.byType("Drawer"));
    //   });

    // test('App Drawer 2/', () async {
    //   await driver.waitFor(find.byType("Scaffold"));
    //   await driver.tap(find.byType("drawer"));
    // });

    // test('App Drawer 3/', () async {
    //   await driver.waitFor(find.byType("Scaffold"));
    //   await driver.tap(locateDrawer);
    // });

    // test('App Drawer 4/', () async {
    //   await driver.waitFor(find.byType("Scaffold"));
    //   await driver.tap(find.byType("NavigationList"));
    // });
  });
}
