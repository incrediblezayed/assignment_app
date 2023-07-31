import 'package:assignment_app/src/widgets/atoms/user_account_atoms.dart/index.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostTagMolecules extends StatelessWidget {
  static const String routeName = "PostTagMolecules";
  const PostTagMolecules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        children: Constants.postTags
            .map((e) => ButtonAtom(
                title: "#$e",
                textStyle: GoogleFonts.roboto(
                  fontSize: 12,
                  color: Constants.postTagTextColor,
                ),
                border: const BorderSide(
                    color: Constants.tagBorderColor, width: 0.5),
                color: Constants.tagBackgroundColor))
            .toList(),
      ),
    );
  }
}
