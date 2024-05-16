import 'package:flutter/material.dart';

class Task {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final bool isCompleted;
  final String category;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    this.isCompleted = false,
    required this.category,
  });

  static List<Task> tasks = [
    Task(
      id: '1',
      title: 'Task 1',
      description: 'Description 1',
      dueDate: DateTime.now(),
      category: 'Home',
    ),
    Task(
      id: '2',
      title: 'Task 2',
      description: 'Description 2',
      dueDate: DateTime.now(),
      category: 'Work',
    ),
    Task(
      id: '3',
      title: 'Task 3',
      description: 'Description 3',
      dueDate: DateTime.now(),
      category: 'Personal',
    ),
    Task(
      id: '4',
      title: 'Task 4',
      description: 'Description 4',
      dueDate: DateTime.now(),
      category: 'Home',
    ),
    Task(
      id: '5',
      title: 'Task 5',
      description: 'Description 5',
      dueDate: DateTime.now(),
      category: 'Work',
    ),
    Task(
      id: '6',
      title: 'Task 6',
      description: 'Description 6',
      dueDate: DateTime.now(),
      category: 'Personal',
    ),
    Task(
      id: '7',
      title: 'Task 7',
      description: 'Description 7',
      dueDate: DateTime.now(),
      category: 'Home',
    ),
    Task(
      id: '8',
      title: 'Task 8',
      description: 'Description 8',
      dueDate: DateTime.now(),
      category: 'Work',
    ),
    Task(
      id: '9',
      title: 'Task 9',
      description: 'Description 9',
      dueDate: DateTime.now(),
      category: 'Personal',
    )
  ];
}
