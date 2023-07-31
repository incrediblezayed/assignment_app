import 'package:flutter/material.dart';

class AppBarBackAtom extends StatelessWidget {
  static const String routeName = "AppBarBackAtom";
  const AppBarBackAtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_back_ios);
  }
}
