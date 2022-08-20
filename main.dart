import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rs/modules/BMI_Screen/BMI.dart';
import 'package:rs/modules/Counter_Screen/Counter.dart';
import 'package:rs/modules/Login_Screen/login.dart';
import 'package:rs/modules/Message_Screen/MessagePage.dart';
import 'package:rs/modules/UserScreen/UsersScreen.dart';

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
      home: login(),
    );
  }
}
