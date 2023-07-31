import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class NotificationIconAtom extends StatelessWidget {
  static const String routeName = "NotificationIconAtom";
  const NotificationIconAtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.notifications_outlined,
      color: Constants.defaultIconColor,
    );
  }
}
