import 'package:app_plush_pan/domain/interfaces/models/task/task.dart';
import 'package:flutter/material.dart';

class WidgetListViewTask extends StatelessWidget {
  final List<Task> tasksDisplay;
  const WidgetListViewTask({super.key, required this.tasksDisplay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 40, bottom: 10),
      child: ListView.builder(
          itemCount: tasksDisplay.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Icon(
                    Icons.check_box_outline_blank,
                    color: Theme.of(context).colorScheme.onBackground,
                    size: 36,
                  ),
                  const SizedBox(width: 16),
                  Text(tasksDisplay[index].title,
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            );
          }),
    );
  }
}
