import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    required this.value,
    required this.onTap,
    this.textColor,
    this.color,
    this.width,
    super.key,
  });

  final String value;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final double? width;

  static const _defaultColor = Color(0xFF343434);
  static const _defaultTextColor = Colors.white;
  static const _defaultSize = 75.0;
  static const _borderRadius = 9.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(width),
      child: Container(
        alignment: Alignment.center,
        height: _defaultSize,
        width: width ?? _defaultSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_borderRadius),
          color: color ?? _defaultColor,
        ),
        child: Text(
          value,
          style: TextStyle(
            fontSize: 36,
            fontFamily: 'Inter',
            color: textColor ?? _defaultTextColor,
          ),
        ),
      ),
    );
  }
}
