import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int Build_Counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 135, 11),
          title: Center(
            child: Text(
              'السبحة الإلكترونية',
              style: TextStyle(fontSize: 27),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1540866225557-9e4c58100c67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=695&q=80'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Build_Counter--;
                      print(Build_Counter);
                    });
                  },
                  child: CircleAvatar(
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 35),
                    ),
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 0, 135, 11),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  '${Build_Counter}',
                  style: TextStyle(
                      fontSize: 80, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Build_Counter++;
                      print(Build_Counter);
                    });
                  },
                  child: CircleAvatar(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 0, 135, 11),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
