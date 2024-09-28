import 'package:flutter/material.dart';



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
            // Navigate to Tops page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 120, 51, 46),
        
          leading: Icon(Icons.category),
          title: Text('Bottoms'),
          onTap: () {
            // Navigate to Bottoms page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 160, 87, 82),
        
          leading: Icon(Icons.category),
          title: Text('Outerwear'),
          onTap: () {
            // Navigate to Outerwear page
          },
        ),
        ListTile(
          tileColor: const Color.fromARGB(255, 182, 115, 111),
        
          leading: Icon(Icons.category),
          title: Text('Accessories'),
          onTap: () {
            // Navigate to Accessories page
          },
        ),
      ],
    ),
  );
}
}