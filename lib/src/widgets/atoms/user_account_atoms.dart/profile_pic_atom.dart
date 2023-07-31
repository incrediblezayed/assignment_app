import 'package:flutter/material.dart';

class ProfilePictureAtom extends StatelessWidget {
  final String profilePicture;
  final Color? backgroundColor;
  const ProfilePictureAtom(
      {Key? key, required this.profilePicture, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(profilePicture),
      backgroundColor: backgroundColor ?? const Color(0xffFFDCA9),
    );
  }
}
