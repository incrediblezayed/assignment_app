import 'package:assignment_app/src/widgets/atoms/app_bar_atoms/index.dart';
import 'package:flutter/material.dart';

class AppBarMolecule extends StatelessWidget {
  final String appBarTitle;
  const AppBarMolecule({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppBarBackAtom(),
          TitleAtom(
            title: appBarTitle,
            fontSize: 16,
          ),
          const NotificationIconAtom(),
        ],
      ),
    );
  }
}
