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
          leading: Icon(Icons.category),
          title: Text('Tops'),
          onTap: () {
            // Navigate to Tops page
          },
        ),
        ListTile(
          leading: Icon(Icons.category),
          title: Text('Bottoms'),
          onTap: () {
            // Navigate to Bottoms page
          },
        ),
        ListTile(
          leading: Icon(Icons.category),
          title: Text('Outerwear'),
          onTap: () {
            // Navigate to Outerwear page
          },
        ),
        ListTile(
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