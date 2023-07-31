import 'package:flutter/material.dart';

class SubtitleAtom extends StatelessWidget {
  final String subtitle;
  const SubtitleAtom({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(subtitle);
  }
}
