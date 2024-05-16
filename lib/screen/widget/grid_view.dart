import 'package:app_plush_pan/models/categories.dart';
import 'package:app_plush_pan/screen/widget/card.dart';
import 'package:flutter/material.dart';

class WidgetGridView extends StatelessWidget {
  final List<Categories> categoriesDisplay;

  const WidgetGridView({super.key, required this.categoriesDisplay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 40, bottom: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 0,
        ),
        itemCount: categoriesDisplay.length,
        itemBuilder: (BuildContext context, int index) {
          return WidgetCard(categories: categoriesDisplay[index]);
        },
      ),
    );
  }
}
