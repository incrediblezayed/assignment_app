import 'package:flutter/material.dart';

class ButtonAtom extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final Color color;
  final BorderSide? border;
  const ButtonAtom(
      {Key? key,
      required this.title,
      required this.textStyle,
      required this.color,
      this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: ShapeDecoration(
        shape: StadiumBorder(side: border ?? BorderSide.none),
        color: color,
      ),
      child: Text(
        title,
        style: textStyle.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
