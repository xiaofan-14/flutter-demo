import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st box
            Expanded(child: Container(color: Colors.deepPurple)),

            // 2st box
            Expanded(flex: 2, child: Container(color: Colors.deepPurple[400])),

            // 3st box
            Expanded(child: Container(color: Colors.deepPurple[200])),
          ],
        ),
      ),
    );
  }
}
