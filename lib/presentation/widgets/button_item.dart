import 'package:flutter/material.dart';
import 'package:modsen_1_calc/index.dart';

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

  static const _defaultSize = 75.0;
  static const _borderRadius = 9.0;
  static const _fontSize = 36.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: _defaultSize,
        width: width ?? _defaultSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_borderRadius),
          color: color ?? AppColors.defaultTextColor,
        ),
        child: Text(
          value,
          style: TextStyle(
            fontSize: _fontSize,
            color: textColor ?? AppColors.greyColor,
          ),
        ),
      ),
    );
  }
}
