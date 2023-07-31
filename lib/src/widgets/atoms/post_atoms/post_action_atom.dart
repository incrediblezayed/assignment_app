import 'package:flutter/material.dart';

import '../../constants.dart';

class PostActionAtom extends StatelessWidget {
  final Widget icon;
  final String text;
  const PostActionAtom({Key? key, required this.icon, this.text = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Constants.defaultIconColor,
          ),
        ),
      ],
    );
  }
}
