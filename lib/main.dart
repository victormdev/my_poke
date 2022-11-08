import 'package:flutter/material.dart';
import 'features/home/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPoke',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(list: [],),
    );
  }
}