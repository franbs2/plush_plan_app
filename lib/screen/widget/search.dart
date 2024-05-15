import 'package:flutter/material.dart';

class WidgetSearch extends StatelessWidget {
  final Color? colorSearch;
  final Color? colorInput;
  final String hintText;
  final Icon icon;
  final double sizeIcon;
  final double borderRadius;
  final Function(String) onTextChanged;

  const WidgetSearch(
      {super.key,
      this.colorSearch,
      this.colorInput,
      this.hintText = 'Search',
      this.icon = const Icon(Icons.search),
      this.sizeIcon = 28,
      this.borderRadius = 24,
      required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: TextField(
          onChanged: onTextChanged,
          style: TextStyle(color: colorInput ?? colorScheme.onBackground),
          decoration: InputDecoration(
            filled: true,
            fillColor: colorSearch ?? colorScheme.onPrimary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
            suffixIcon: icon,
          ),
        ));
  }
}
