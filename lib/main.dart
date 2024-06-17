import 'package:flutter/material.dart';
import 'index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Theme(
        data: ThemeData(fontFamily: 'Inter'),
        child: const MainPage(),
      ),
    );
  }
}
