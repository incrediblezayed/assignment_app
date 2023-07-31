import 'package:flutter/material.dart';

class TitleAtom extends StatelessWidget {
  final String title;
  final double fontSize;
  const TitleAtom({Key? key, required this.title, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
