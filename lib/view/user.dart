import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [Icon(Icons.notifications)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/person.png',
                width: 230,
                height: 230,
              ),
              Container(
                height: width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'abc@gmail.com',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'logout',
                      style: TextStyle(fontSize: 20, color: Color(0xff9134aa)),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 26,
              ),
              Text(
                'ACCOUNT INFORMATION',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Text(
                    'Full Name',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'User',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 30,
                  ),
                ),
                listtile('Email', 'user@gmail.com'),
                listtile('Phone', '+0900-786 01'),
                listtile('Address', 'New Yourk,Random Street House No. 72'),
                listtile('Gender', 'Male'),
                listtile('Date of Birth', 'Octuber 13, 1999'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget listtile(String title, String subtitle) {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      ListTile(
        title: Text(
          '$title',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '$subtitle',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
