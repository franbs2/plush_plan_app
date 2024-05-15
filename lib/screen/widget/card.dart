import 'package:app_plush_pan/models/categories.dart';
import 'package:app_plush_pan/screen/widget/title.dart';
import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final Categories categories;
  final Color color;
  final double sizeIcon;
  final Color colorIcon;
  final Color colorTitle;
  final double sizeTitle;
  final Color colorText;
  final double sizeText;

  const WidgetCard(
      {super.key,
      required this.categories,
      this.color = const Color(0xFFA8E6FF),
      this.sizeIcon = 48,
      this.colorIcon = const Color(0xFF333333),
      this.colorTitle = const Color(0xFF333333),
      this.sizeTitle = 18,
      this.colorText = const Color(0xFF595858),
      this.sizeText = 16});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        color: color,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                categories.icon.icon,
                size: sizeIcon,
                color: colorIcon,
              ),
              WidgetTitle(
                  title: categories.name, color: colorTitle, size: sizeTitle),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.schedule, color: colorText),
                  const SizedBox(width: 8),
                  Text('${categories.qntItems} itens',
                      style: TextStyle(color: colorText, fontSize: sizeText)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
