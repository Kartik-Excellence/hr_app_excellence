import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Hr App', () {
    final emailMsg = find.byValueKey('email');
    final psswordMsg = find.byValueKey('password');
    // final buttonFinder = find.byValueKey('button');
    FlutterDriver flutterDriver;
    setUpAll(() async {
      flutterDriver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      final health = await flutterDriver.checkHealth();
      expect(health.status, HealthStatus.ok);
    });

    tearDownAll(() async {
      if (flutterDriver != null) {
        flutterDriver.close();
      }
    });
    test('Empty Form Testing', () async {
      flutterDriver.tap(find.byType("FlatButton"));
      await flutterDriver.waitFor(find.text("Enter Credentials"));
      // expect(await flutterDriver.getText(psswordMsg), 'Enter Credentials');
    });

    test('Form Fill Test', () async {
      await flutterDriver.tap(find.byType("TextFormField"));
      await flutterDriver.enterText('kartikjabreba');
      await flutterDriver.tap(find.byType("TextFormField"));
      await flutterDriver.enterText('CMJ97');
    });

    test('LOgin Button Press', () async {
      await flutterDriver.tap(find.byType("FlatButton"));
    });

    test('Home SCreen', () async{
      await flutterDriver.waitFor(find.text('Home'));
    });
  });
}
// test('increments the counter', () async {
//       // First, tap the button.
//       await driver.tap(buttonFinder);

//       // Then, verify the counter text is incremented by 1.
//       expect(await driver.getText(counterTextFinder), "1");
//     // });
