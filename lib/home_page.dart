
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'camera.dart';
import 'closet.dart';
import 'Sustainability.dart';
import 'recommendation.dart';





void main() {
  runApp(WardrobeApp());
}

class WardrobeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wardrobe Organizer',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 85, 174, 55),

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
            tileColor: const Color.fromARGB(255, 69, 60, 151),


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
            tileColor: const Color.fromARGB(255, 140, 126, 195),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => plastic()),
              );
            },
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 191, 177, 248),
            leading: Icon(Icons.checkroom),
            title: Text('Trade'),
           // tileColor: Colors.yellow,


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyClosetPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.checkroom),
            title: Text('Upload your dress'),
            tileColor: Colors.deepPurple ,


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => camera()),
              );
            },
          ),
        ],
      ),
    );
  }
}



