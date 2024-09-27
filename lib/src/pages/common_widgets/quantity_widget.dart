import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class QuantityWidget extends StatefulWidget {
  final int value;
  final String suffixText;
  final Function(int quantity) result;

  const QuantityWidget({
    super.key,
    required this.value,
    required this.suffixText,
    required this.result,
  });

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          _buildQuantityButton(
            color: Colors.grey,
            icon: Icons.remove,
            onTap: () {
              if (widget.value == 1) {
                return;
              }

              int resultCount = widget.value - 1;
              widget.result(resultCount);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '${widget.value}${widget.suffixText}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildQuantityButton(
            color: CustomColors.customSwatchColor,
            icon: Icons.add,
            onTap: () {
              int resultCount = widget.value + 1;
              widget.result(resultCount);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton({
    required Color color,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
