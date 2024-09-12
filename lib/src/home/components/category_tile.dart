import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class CategoryTile extends StatefulWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategoryTile({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.isSelected
                ? CustomColors.customSwatchColor
                : Colors.transparent,
          ),
          child: Text(
            widget.category,
            style: TextStyle(
              color: widget.isSelected
                  ? Colors.white
                  : CustomColors.customContrastColor,
              fontWeight: FontWeight.bold,
              fontSize: widget.isSelected ? 16 : 14,
            ),
          ),
        ),
      ),
    );
  }
}
