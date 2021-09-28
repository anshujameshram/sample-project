import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String name;
  final Color color;
  const MyText({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 25,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}