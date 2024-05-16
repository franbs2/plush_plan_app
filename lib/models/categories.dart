import 'package:app_plush_pan/views/pages/tasks_page.dart';
import 'package:flutter/material.dart';

class Categories {
  final String name;
  final Icon icon;
  final int qntItems = 0;
  final List<Task>? tasks;

  Categories({required this.name, required this.icon, this.tasks});

  static List<Categories> categories = [
    Categories(
      name: "Home",
      icon: Icon(Icons.home),
    ),
    Categories(name: "Work", icon: Icon(Icons.work)),
    Categories(name: "School", icon: Icon(Icons.school)),
    Categories(name: "Other", icon: Icon(Icons.more_horiz)),
    Categories(name: "Personal", icon: Icon(Icons.person)),
    Categories(name: "Family", icon: Icon(Icons.family_restroom)),
    Categories(name: "Friends", icon: Icon(Icons.people)),
    Categories(name: "Travel", icon: Icon(Icons.travel_explore)),
    Categories(name: "Food", icon: Icon(Icons.fastfood)),
    Categories(name: "Shopping", icon: Icon(Icons.shopping_bag)),
    Categories(name: "Art", icon: Icon(Icons.art_track)),
    Categories(name: "Gaming", icon: Icon(Icons.gamepad)),
    Categories(name: "Music", icon: Icon(Icons.music_note)),
    Categories(name: "Sports", icon: Icon(Icons.sports_basketball)),
    Categories(name: "Movies", icon: Icon(Icons.movie)),
    Categories(name: "Books", icon: Icon(Icons.book)),
    Categories(name: "News", icon: Icon(Icons.newspaper)),
    Categories(name: "Games", icon: Icon(Icons.gamepad)),
    Categories(name: "Pets", icon: Icon(Icons.pets)),
    Categories(name: "Nature", icon: Icon(Icons.nature)),
  ];
}
