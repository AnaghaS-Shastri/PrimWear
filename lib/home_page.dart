
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';
import 'closet.dart';
import 'Sustainability.dart';





void main() {
  runApp(WardrobeApp());
}

class WardrobeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wardrobe Organizer',
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PrimWear'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.checkroom),
            title: Text('My Closet'),
            tileColor: Colors.yellow,


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyClosetPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.eco),
            title: Text('Sustainability Recommendations'),
            tileColor: Colors.lightGreen,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SustainabilityPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.checkroom),
            title: Text('Trade'),
            tileColor: Colors.yellow,


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyClosetPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}



