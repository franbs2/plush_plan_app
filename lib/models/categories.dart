import 'package:app_plush_pan/views/pages/tasks_page.dart';
import 'package:flutter/material.dart';

class Categories {
  final int idCategory;
  final String nameCategory;
  final String iconCode;
  int quantItems = 0;

  Categories({
    required this.idCategory,
    required this.nameCategory,
    required this.iconCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'idCategory': idCategory,
      'nameCategory': nameCategory,
      'iconCode': iconCode,
    };
  }

  factory Categories.fromMap(Map<String, dynamic> map) {
    return Categories(
      idCategory: map['idCategory'],
      nameCategory: map['nameCategory'],
      iconCode: map['iconCodePoint'],
    );
  }
}
