import 'package:flutter/material.dart';


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