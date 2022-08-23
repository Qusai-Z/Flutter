import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rs/modules/Add_Photo/AddPhoto.dart';
import 'package:rs/modules/Menu/Menu.dart';
import 'package:rs/modules/Time/Clock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int CurrentIndex = 0;

  List<Widget> Screens = [
    MenuScreen(), //0
    AddPhoto(), //1
    ClockScreen(), //2
  ];

  List<String> Titles = [
    'MenuScreen', //0
    'AddPhoto', //1
    'ClockScreen', //2
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[CurrentIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print(
            await getName().then((value) {
              throw ('Some erroree');
              print(value); //print getName() method
              print("Jamal"); // any operation you would like
            }).catchError(
              (error) {
                print(
                    'Error is ${error.toString()}'); //print this message when error occured
              },
            ),
          ); //await:   wait the process
        },
        child: Icon(Icons.add),
      ), //change the Screen when the current index is changed
      appBar: AppBar(
        title: Center(child: Text(Titles[CurrentIndex])),
        // title: Center(child: Text('${Titles[CurrentIndex]}')),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex, // 0
        onTap: (index) {
          //Change index automaticcly..no need to create counter variable

          setState(() {
            CurrentIndex =
                index; //This will change the index depending on onTap Function
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu', //Text under the icon
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: 'Add photo'),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: 'Time'),
        ],
      ),
    );
  }

  Future<String> getName() async {
    //async  ... move the process to the backend
    return 'KARIM';
  }
}
