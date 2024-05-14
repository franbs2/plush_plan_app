import 'package:app_plush_pan/models/categories.dart';
import 'package:app_plush_pan/screen/widget/grid_view.dart';
import 'package:app_plush_pan/screen/widget/search.dart';
import 'package:app_plush_pan/screen/widget/title.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Categories> categoriesDisplay = List.from(Categories.categories);

  void updateGrid(String value) {
    setState(() {
      categoriesDisplay = Categories.categories
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf26185),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back, color: Color(0xFFF9F5F4)),
        title: const WidgetTitle(
          title: 'To do Categories',
          color: Color(0xFFF9F5F4),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          WidgetSearch(
            onTextChanged: (value) => updateGrid(value),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: WidgetGridView(categoriesDisplay: categoriesDisplay),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFf26185),
        onPressed: () {},
        child: const Icon(Icons.add, color: Color(0xFFF9F5F4), size: 48),
      ),
    );
  }
}
