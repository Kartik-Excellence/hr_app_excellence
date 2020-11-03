import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void loginTest() async{
  group('Login Test',() {
    final emailMsg = find.byValueKey('email');
    final psswordMsg = find.byValueKey('password');
    FlutterDriver flutterDriver;
    setUpAll(() async {
      flutterDriver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (flutterDriver != null) {
        flutterDriver.close();
      }
    });

    test('Login Form Fill', () async {
      await flutterDriver.tap(emailMsg);
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.enterText('kartikjabreba');
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.tap(psswordMsg);
      await Future.delayed(Duration(seconds: 2));
      await flutterDriver.enterText('CMJ97');
    });

    test('Form Fill Test', () async {
      // await flutterDriver.tap(find.byType("TextFormField"));
      // await flutterDriver.enterText('kartikjabreba');
      // await flutterDriver.tap(find.byType("TextFormField"));
      // await flutterDriver.enterText('CMJ97');
      await flutterDriver.tap(find.byType("FlatButton"));
      await Future.delayed(Duration(seconds: 2));


      // expect(await flutterDriver.waitFor(find.text('Login....')), matcher) ;
    });

     test('Home SCreen', () async {
       await flutterDriver.waitFor(find.text('All employee information at one page'));
       await Future.delayed(Duration(seconds: 2));

    });


  }
  );
}
