import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'package:modsen_1_calc/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  static const _contentPadding = 19.0;
  static const _dividerHeight = 25.0;
  static const _lastButtonWidth = 166.0;
  static const _outputStyle =
      TextStyle(fontSize: 48, color: AppColors.defaultTextColor);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(MainPage._contentPadding),
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      _current,
                      style: MainPage._outputStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Text(
                    _result,
                    style: MainPage._outputStyle
                        .copyWith(color: AppColors.lightGreyColor),
                  ),
                ],
              ),
            ),
            const Divider(
              height: MainPage._dividerHeight,
              color: AppColors.dividerColor,
            ),
            Flexible(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonItem(
                        value: 'C',
                        color: AppColors.redColor,
                        textColor: AppColors.greyColor,
                        onTap: () => clean(),
                      ),
                      ButtonItem(value: '+/-', onTap: () => negative()),
                      ButtonItem(
                        value: '%',
                        textColor: AppColors.greenColor,
                        onTap: () => percent(),
                      ),
                      ButtonItem(
                        value: '÷',
                        textColor: AppColors.greenColor,
                        onTap: () => click('/'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonItem(value: '7', onTap: () => click('7')),
                      ButtonItem(value: '8', onTap: () => click('8')),
                      ButtonItem(value: '9', onTap: () => click('9')),
                      ButtonItem(
                        value: '×',
                        textColor: AppColors.greenColor,
                        onTap: () => click('*'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonItem(value: '4', onTap: () => click('4')),
                      ButtonItem(value: '5', onTap: () => click('5')),
                      ButtonItem(value: '6', onTap: () => click('6')),
                      ButtonItem(
                        value: '-',
                        textColor: AppColors.greenColor,
                        onTap: () => click('-'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonItem(value: '1', onTap: () => click('1')),
                      ButtonItem(value: '2', onTap: () => click('2')),
                      ButtonItem(value: '3', onTap: () => click('3')),
                      ButtonItem(
                        value: '+',
                        textColor: AppColors.greenColor,
                        onTap: () => click('+'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonItem(value: '0', onTap: () => click('0')),
                      ButtonItem(value: '.', onTap: () => click(',')),
                      ButtonItem(
                        value: '=',
                        color: AppColors.greenColor,
                        textColor: AppColors.greyColor,
                        width: MainPage._lastButtonWidth,
                        onTap: () => evaluate(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _current = '';
  String _result = '';

  void click(String button) {
    if ((!_current.endsWith('+') &&
            !_current.endsWith('-') &&
            !_current.endsWith('*') &&
            !_current.endsWith('/')) ||
        (button != '+' && button != '-' && button != '*' && button != '/')) {
      setState(() {
        _current += button;
      });
    }
  }

  void clean() {
    setState(() {
      _current = '';
      _result = '';
    });
  }

  void evaluate() {
    Parser p = Parser();
    Expression exp = p.parse(_current);
    ContextModel cm = ContextModel();
    double res = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _result = res.toString();
      _current = res.toString();
    });
  }

  void negative() {
    setState(() {
      _current.startsWith('-')
          ? _current = _current.substring(1)
          : _current = '-$_current';
    });
  }

  void percent() {
    setState(() {
      _current = (double.parse(_current) / 100).toString();
    });
  }
}
