import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UsersInf {
  final int ID;
  final String NAME;
  final String PN;

  UsersInf(this.ID, this.NAME, this.PN) {}
}

class UsersScreen extends StatelessWidget {
  List<UsersInf> Users = [
    UsersInf(1, 'Mostafa Shaaban', '+966550896733'),
    UsersInf(2, 'Loai fahmni', '+966553234430'),
    UsersInf(3, 'Ahmed Saeed', '+966552214440'),
    UsersInf(4, 'Jameel Jamal', '+966522009893'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Users',
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Color.fromARGB(255, 5, 18, 133),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => GenerateIcons(Users[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[300],
                ),
            itemCount: Users.length),
        backgroundColor: Color.fromARGB(254, 255, 255, 255),
      ),
    );
  }

  Widget GenerateIcons(UsersInf user) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 23,
              child: Text('${user.ID}'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.NAME}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Text('${user.PN}'),
              ],
            ),
          ],
        ),
      );
}
