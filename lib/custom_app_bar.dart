import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key});

  @override
  final Widget title = Text(
    "Tourism & Co.".toUpperCase(),
    style: const TextStyle(
      backgroundColor: Colors.white,
      color: Colors.black,
    ),
  );

  var result = <Widget>[];

  List<Widget> _renderFacts() {
    for (int i = 0; i < 2; i++) {
      result.add(const Text('data1'));
      result.add(const Text('data2'));
    }
    return result;
  }

  // @override
  // final List<Widget> actions = result;
}
