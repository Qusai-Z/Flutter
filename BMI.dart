import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMI();
}

class _BMI extends State<BMI> {
  bool isMale = true;

  double height = 180;

  int weight = 50;

  int age = 18;

  //Color _color = Color.fromARGB(255, 229, 228, 228);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI Calaculator'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(
                      //Expand the element to fill the layout
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            // Changing the variable state
                            () {
                              isMale = true;
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            //  color: _color,
                            color: isMale
                                ? Color.fromARGB(255, 201, 0, 0)
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image(
                                  image: NetworkImage(
                                      'https://www.shareicon.net/data/128x128/2016/11/14/852072_male_512x512.png'),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        //To press on the container
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: !isMale
                                ? Color.fromARGB(255, 201, 0, 0)
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Image(
                                  image: NetworkImage(
                                      'https://www.clipartmax.com/png/full/171-1714130_female-silhouette-%C3%A2%E2%80%B9%E2%80%A0-free-vectors-logos-icons-and-female-icon.png'),
                                  height: 120,
                                ),
                                SizedBox(height: 15),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
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
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${height.round()}', //round() to closure the number
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Slider(
                              value: height,
                              min: 60,
                              max: 220,
                              thumbColor: Colors.red,
                              activeColor: Color.fromARGB(255, 2, 0, 61),
                              onChanged: (value) {
                                setState(
                                  () {
                                    height = value;
                                  },
                                );
                                print(
                                  // not important
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
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  // Press button
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  // mini: true,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  // mini: true,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'weight',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  //mini: true,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  // mini: true,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 2, 0, 61),
      ),
    ));
  }
}
