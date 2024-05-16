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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', width: 260),
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
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(44),
                  topRight: Radius.circular(44),
                ),
              ),
              child: (categoriesDisplay.isEmpty)
                  ? Center(
                      child: WidgetTitle(
                      title: 'No results found',
                      size: 20,
                    ))
                  : WidgetGridView(categoriesDisplay: categoriesDisplay),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.primary,
        onPressed: () {},
        child: Icon(Icons.add, size: 48),
        tooltip: 'Add task',
      ),
    );
  }
}
