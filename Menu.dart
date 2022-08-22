import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text(
          'Menu Screen',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
