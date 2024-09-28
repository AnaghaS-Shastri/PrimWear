



import 'package:flutter/material.dart';

void main() {
  runApp(tops());
}

class tops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('tops verites'),
          backgroundColor: Color.fromARGB(255, 248, 247, 247), // Coral color
        ),
        body: Row(
          children: [
            // First Column: Flex = 2.5 (1/10th of space)
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 48, 48, 48), // Coral color
                child: Center(
                  child: Text(
                    'Col 1',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Second Column: Flex = 2.5(2/10th of space)
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 81, 80, 79), // Light coral color
                child: Center(
                  child: Text(
                    'Col 2',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Third Column: Flex = 2.5 (3/10th of space)
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 158, 157, 156), // Lighter coral color
                child: Center(
                  child: Text(
                    'Col 3',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Fourth Column: Flex = 2.5 (4/10th of space)
            Expanded(
              flex: 2,
              child: Container(
                color: Color.fromARGB(255, 229, 227, 226), // Lightest coral color
                child: Center(
                  child: Text(
                    'Col 4',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}