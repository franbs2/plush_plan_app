import 'package:app_plush_pan/data/mock.dart';
import 'package:app_plush_pan/views/widget/grid_view.dart';
import 'package:app_plush_pan/views/widget/search.dart';
import 'package:app_plush_pan/views/widget/title.dart';
import 'package:flutter/material.dart';

import '../../domain/interfaces/models/category/categories.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Category> categoriesDisplay = List.from(mockCategories);

  void updateGrid(String value) {
    setState(() {
      categoriesDisplay = mockCategories
          .where((element) =>
              element.nameCategory.toLowerCase().contains(value.toLowerCase()))
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(44),
                  topRight: Radius.circular(44),
                ),
              ),
              child: (categoriesDisplay.isEmpty)
                  ? const Center(
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
        tooltip: 'Add task',
        child: const Icon(Icons.add, size: 48),
      ),
    );
  }
}
