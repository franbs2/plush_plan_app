import 'package:flutter/material.dart';

class Categories {
  final String name;
  final Icon icon;
  final int qntItems;

  Categories({required this.name, required this.icon, this.qntItems = 0});

  static List<Categories> categories = [
    Categories(name: "Home", icon: Icon(Icons.home), qntItems: 5),
    Categories(name: "Work", icon: Icon(Icons.work), qntItems: 3),
    Categories(name: "School", icon: Icon(Icons.school), qntItems: 8),
    Categories(name: "Other", icon: Icon(Icons.more_horiz), qntItems: 2),
    Categories(name: "Personal", icon: Icon(Icons.person), qntItems: 4),
    Categories(name: "Family", icon: Icon(Icons.family_restroom), qntItems: 6),
    Categories(name: "Friends", icon: Icon(Icons.people), qntItems: 7),
    Categories(name: "Travel", icon: Icon(Icons.travel_explore), qntItems: 10),
    Categories(name: "Food", icon: Icon(Icons.fastfood), qntItems: 15),
    Categories(name: "Shopping", icon: Icon(Icons.shopping_bag), qntItems: 12),
    Categories(name: "Art", icon: Icon(Icons.art_track), qntItems: 9),
    Categories(name: "Gaming", icon: Icon(Icons.gamepad), qntItems: 20),
    Categories(name: "Music", icon: Icon(Icons.music_note), qntItems: 30),
    Categories(
        name: "Sports", icon: Icon(Icons.sports_basketball), qntItems: 25),
    Categories(name: "Movies", icon: Icon(Icons.movie), qntItems: 18),
    Categories(name: "Books", icon: Icon(Icons.book), qntItems: 22),
    Categories(name: "News", icon: Icon(Icons.newspaper), qntItems: 14),
    Categories(name: "Games", icon: Icon(Icons.gamepad), qntItems: 17),
    Categories(name: "Pets", icon: Icon(Icons.pets), qntItems: 11),
    Categories(name: "Nature", icon: Icon(Icons.nature), qntItems: 16),
  ];
}
