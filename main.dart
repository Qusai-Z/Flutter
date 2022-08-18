import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rs/BMI.dart';
import 'package:rs/Counter.dart';
import 'package:rs/MessagePage.dart';
import 'package:rs/UsersScreen.dart';

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
      home: BMI(),
    );
  }
}
