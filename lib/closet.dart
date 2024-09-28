import 'package:flutter/material.dart';
import 'package:untitled/shirt.dart';



class MyClosetPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('My Closet'),
    ),
    body: ListView(
      children: [
        ListTile(
          tileColor: const Color.fromARGB(255, 141, 39, 32),
        
          
          
          leading: Icon(Icons.category),
          title: Text('shirts'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => shirt()),
            ); // Navigate to Tops page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 120, 51, 46),
        
          leading: Icon(Icons.category),
          title: Text('Bottoms'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => shirt()),
            );// Navigate to Bottoms page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 160, 87, 82),
        
          leading: Icon(Icons.category),
          title: Text('Outerwear'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyClosetPage()),
            );// Navigate to Outerwear page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 182, 115, 111),
        
          leading: Icon(Icons.category),
          title: Text('Accessories'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyClosetPage()),
            );// Navigate to Accessories page
          },
        ),
      ],
    ),
  );
}
}