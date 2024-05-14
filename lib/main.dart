import 'package:app_plush_pan/screen/pages/home_page.dart';
import 'package:app_plush_pan/style/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDefault,
      home: const MyHomePage(),
    );
  }
}
