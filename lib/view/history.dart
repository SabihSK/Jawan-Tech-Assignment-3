import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter Your Name',
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                top: 20,
              ),
              child: Text(
                'History',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            listtile('iphone12.jpg', 'Iphone 12'),
            listtile('note20.jpg', 'Note 20 Ultra'),
            listtile('AppleAir.jpg', 'Macbook Air'),
            listtile('apple.jpg', 'Macbook Pro'),
            listtile('game.jpg', 'Gaming PC'),
            listtile('Oppo.jpg', 'Oppo F19'),
            listtile('poco.jpg', 'POCO X3 Pro'),
            listtile('note20.jpg', 'Note 20 Ultra'),
            listtile('AppleAir.jpg', 'Macbook Air'),
            listtile('apple.jpg', 'Macbook Pro'),
            listtile('game.jpg', 'Gaming PC'),
          ],
        ),
      ),
    );
  }
}

Widget listtile(String image, String name) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/$image'),
      ),
      title: Text(
        '$name',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subtitle: Row(
        children: [
          Image.asset(
            'assets/images/star.png',
            width: 20,
            height: 20,
          ),
          Text(
            ' 5.0 (23 Reviews)',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
      trailing: Text(
        '\$10',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ),
  );
}
