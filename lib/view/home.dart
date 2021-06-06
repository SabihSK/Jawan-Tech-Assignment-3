import 'package:assign3/view/history.dart';
import 'package:assign3/view/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text('User'),
                trailing: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => User()));
                },
              ),
              ListTile(
                title: Text('History'),
                trailing: Icon(Icons.history),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => History()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width * (0.9 + 0.05),
              child: Column(
                children: [
                  listofPhone(
                      context, 'assets/images/iphone12.jpg', 'Iphone 12'),
                  listofPhone(
                      context, 'assets/images/note20.jpg', 'Note 20 Ultra'),
                  listofPhone(
                      context, 'assets/images/AppleAir.jpg', 'Macbook Air'),
                  listofPhone(
                      context, 'assets/images/apple.jpg', 'Macbook Pro'),
                  listofPhone(context, 'assets/images/game.jpg', 'Gaming PC'),
                  listofPhone(context, 'assets/images/Oppo.jpg', 'Oppo F19'),
                  listofPhone(
                      context, 'assets/images/poco.jpg', 'Xiaomi Poco X3 Pro'),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget listofPhone(context, String image, String name) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Column(
    children: [
      SizedBox(
        height: height * 0.01,
      ),
      Card(
        elevation: 5,
        child: Row(
          children: [
            Container(
              width: width * 0.3,
              height: width * 0.3,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(200),
              // ),
              child: Image.asset(
                '$image',
                width: width * 0.3,
                height: width * 0.3,
              ),
            ),
            SizedBox(
              width: width * 0.04,
            ),
            Container(
              height: width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.asset(
                          'assets/images/star.png',
                        ),
                      ),
                      Text(' 5.0 (23 Reviews)'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('20 Pieces\t\t'),
                      Text(
                        '\$90',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff9134aa),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text('Quantity: 1'),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
