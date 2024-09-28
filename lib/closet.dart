import 'package:flutter/material.dart';
import 'package:untitled/tops.dart';



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
          tileColor: const Color.fromARGB(255, 60, 60, 61),
        
          
          
          leading: Icon(Icons.category),
          title: Text('tops'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => tops()),
            ); // Navigate to Tops page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 77, 77, 79),
        
          leading: Icon(Icons.category),
          title: Text('Bottoms'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => tops()),
            );// Navigate to Bottoms page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 131, 132, 134),
        
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
          tileColor: const Color.fromARGB(255, 179, 179, 182),
        
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