import 'package:flutter/material.dart';

import 'package:modsen_1_calc/index.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  static const _redColor = Color(0xFFFF5959);
  static const _greenColor = Color(0xFF66FF7F);
  static const _greyColor = Color(0xFF343434);
  static const _lastButtonWidth = 166.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonItem(
              value: 'C',
              color: _redColor,
              textColor: _greyColor,
              onTap: () {},
            ),
            ButtonItem(value: '+/-', onTap: () {}),
            ButtonItem(value: '%', textColor: _greenColor, onTap: () {}),
            ButtonItem(value: '÷', textColor: _greenColor, onTap: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonItem(value: '7', onTap: () {}),
            ButtonItem(value: '8', onTap: () {}),
            ButtonItem(value: '9', onTap: () {}),
            ButtonItem(value: '×', textColor: _greenColor, onTap: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonItem(value: '4', onTap: () {}),
            ButtonItem(value: '5', onTap: () {}),
            ButtonItem(value: '6', onTap: () {}),
            ButtonItem(value: '-', textColor: _greenColor, onTap: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonItem(value: '1', onTap: () {}),
            ButtonItem(value: '2', onTap: () {}),
            ButtonItem(value: '3', onTap: () {}),
            ButtonItem(value: '+', textColor: _greenColor, onTap: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonItem(value: '0', onTap: () {}),
            ButtonItem(value: '.', onTap: () {}),
            ButtonItem(
              value: '=',
              color: _greenColor,
              textColor: _greyColor,
              width: _lastButtonWidth,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
