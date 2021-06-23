import 'package:flutter/material.dart';
import 'package:trippin_app/screens/login-signup/forgotPswd.dart';
import 'package:trippin_app/screens/login-signup/login.dart';
import 'package:trippin_app/screens/login-signup/signup.dart';
import 'package:trippin_app/screens/startSliders/sliderOne.dart';
import 'package:trippin_app/screens/startSliders/sliderThree.dart';
import 'package:trippin_app/screens/startSliders/sliderTwo.dart';

void main() {
  runApp(TrippinApp());
}

class TrippinApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trippin App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliderOne(),
      initialRoute: '/sliderOne',
      routes: {
        '/sliderOne': (context) => SliderOne(),
        '/sliderTwo': (context) => SliderTwo(),
        '/sliderThree': (context) => SliderThree(),
        '/login': (context) => Login(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}
