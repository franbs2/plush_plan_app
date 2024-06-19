import 'package:app_plush_pan/domain/interfaces/models/category/categories.dart';
import 'package:app_plush_pan/views/widget/title.dart';
import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final Category categories;
  final Color? color;
  final double sizeIcon;
  final Color? colorIcon;
  final Color? colorTitle;
  final double sizeTitle;
  final Color? colorText;
  final double sizeText;

  const WidgetCard(
      {super.key,
      required this.categories,
      this.color,
      this.sizeIcon = 48,
      this.colorIcon,
      this.colorTitle,
      this.sizeTitle = 18,
      this.colorText,
      this.sizeText = 16});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        color: color ?? colorScheme.secondaryContainer,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                IconData(int.parse(categories.iconCode),
                    fontFamily: 'MaterialIcons'),
                size: sizeIcon,
                color: colorIcon,
              ),
              WidgetTitle(
                  title: categories.nameCategory,
                  color: color ?? colorScheme.onSecondary,
                  size: sizeTitle),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.schedule, color: colorText ?? colorScheme.surface),
                  const SizedBox(width: 8),
                  Text('${categories.quantItems} itens',
                      style: TextStyle(
                          color: colorText ?? colorScheme.surface,
                          fontSize: sizeText)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
