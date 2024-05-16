import 'package:app_plush_pan/views/pages/home_page.dart';
import 'package:app_plush_pan/style/app_theme.dart';
import 'package:app_plush_pan/views/pages/tasks_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: TaskPage(),
    );
  }
}
