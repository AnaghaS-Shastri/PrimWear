



import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';





void main() {
  runApp(WardrobeApp());
}

class WardrobeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wardrobe Organizer',
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
        title: Text('Wardrobe Organizer'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.checkroom),
            title: Text('My Closet'),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SustainabilityPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

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

class SustainabilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainability Recommendations'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.recycling),
            title: Text('Upcycling Ideas'),
            onTap: () {
              // Navigate to Upcycling Ideas page
            },
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text('Clothing Care Tips'),
            onTap: () {
              // Navigate to Clothing Care Tips page
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Second-hand Shopping'),
            onTap: () {
              // Navigate to Second-hand Shopping page
            },
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Eco-friendly Brands'),
            onTap: () {
              // Navigate to Eco-friendly Brands page
            },
          ),
        ],
      ),
    );
  }
}