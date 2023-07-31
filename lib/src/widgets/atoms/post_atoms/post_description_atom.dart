import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDescriptionAtom extends StatelessWidget {
  final String postDescription;
  final FontWeight fontWeight;
  const PostDescriptionAtom(
      {Key? key,
      required this.postDescription,
      this.fontWeight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      postDescription,
      style: GoogleFonts.notoSans(
          color: Constants.postDescriptionColor,
          fontSize: 12,
          fontWeight: fontWeight),
    );
  }
}
