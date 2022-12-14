import 'package:empanturra/src/feautures/auth/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

import 'src/feautures/auth/verify_number_otp/verify_number.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Empanturra',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          fontFamily: 'Poppins',
        ),
        home: const VerifyNumber());
  }
}
