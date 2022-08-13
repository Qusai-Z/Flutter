import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMI();
}

class _BMI extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI Calaculator')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.amber,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 50,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 50,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '180',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'cm',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Slider(
                                value: 100,
                                min: 60,
                                max: 220,
                                onChanged: (value) {
                                  print(
                                    value.round(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text('Age'),
                        Text('25'),
                      ],
                    ),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
