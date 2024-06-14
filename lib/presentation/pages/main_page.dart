import 'package:flutter/material.dart';

import 'package:modsen_1_calc/index.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static const _backgroundColor = Color(0xFF151515);
  static const _dividerColor = Color(0xFF4E4D4D);
  static const _contentPadding = 19.0;
  static const _dividerHeight = 25.0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: _backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(_contentPadding),
        child: Column(
          children: [
            Flexible(flex: 4, child: Output()),
            Divider(height: _dividerHeight, color: _dividerColor),
            Flexible(flex: 7, child: Buttons()),
          ],
        ),
      ),
    );
  }
}
