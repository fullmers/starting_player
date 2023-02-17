import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starting Player',
      theme: ThemeData(fontFamily: 'Zilla Slab'),
      home: const HomePage(title: 'Starting Player'),
    );
  }
}
