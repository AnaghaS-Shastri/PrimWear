import 'package:flutter/material.dart';

class outwear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
appBar: AppBar(
          title: Text('2 Rows, 4 Coral Boxes'),
          backgroundColor: Color(0xFFFF7F50), // Coral color for the AppBar
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // First Row of Coral Boxes
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      color: Color(0xFFFF7F50), // Coral color
                      child: Center(
                        child: Text(
                          'Blazers : Wardrobe 2, Rack 3',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 250,
                      color: Color(0xFFFF9F70), // Light Coral color
                      child: Center(
                        child: Text(
                          'Coats and jackets : Wardrobe 2 Rack 4',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Second Row of Coral Boxes
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      color: Color(0xFFFFBFA0), // Lighter Coral color
                      child: Center(
                        child: Text(
                          'Mufflers : Wardrobe 2, Drawer 1',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 250,
                      color: Color(0xFFFFDFC0), // Lightest Coral color
                      child: Center(
                        child: Text(
                          'Ties : Wardrobe 2, Drawer 2',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
      ),
    );
  }
}
