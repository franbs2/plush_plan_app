import 'package:app_plush_pan/models/categories.dart';
import 'package:app_plush_pan/views/widget/grid_view.dart';
import 'package:app_plush_pan/views/widget/search.dart';
import 'package:app_plush_pan/views/widget/title.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: colorScheme.onPrimary),
            onPressed: () => Navigator.pop(context)),
        title: WidgetTitle(color: colorScheme.onPrimary, title: 'Tasks'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          WidgetSearch(
            onTextChanged: (value) => (value),
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
            ),
          ),
        ],
      ),
    );
  }
}
