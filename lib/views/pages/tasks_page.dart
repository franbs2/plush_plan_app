import 'package:app_plush_pan/models/categories.dart';
import 'package:app_plush_pan/models/task.dart';
import 'package:app_plush_pan/views/widget/grid_view.dart';
import 'package:app_plush_pan/views/widget/list_view_task.dart';
import 'package:app_plush_pan/views/widget/search.dart';
import 'package:app_plush_pan/views/widget/title.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Task> tasksDisplay = List.from(Task.tasks);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colorScheme.surface,
            ),
            onPressed: () => Navigator.pop(context)),
        title: WidgetTitle(
          color: colorScheme.surface,
          title: 'Tasks',
          size: 28,
        ),
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
              child: (Task.tasks.isEmpty)
                  ? Center(
                      child: WidgetTitle(
                      title: 'Add your first task in +',
                    ))
                  : (tasksDisplay.isEmpty)
                      ? Center(
                          child: WidgetTitle(
                          title: 'No results found',
                          size: 20,
                        ))
                      : WidgetListViewTask(tasksDisplay: tasksDisplay),
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
