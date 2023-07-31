import 'package:assignment_app/src/widgets/atoms/user_account_atoms.dart/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHeaderMolecule extends StatelessWidget {
  final String profilePicture;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final String verifiedText;
  const UserHeaderMolecule(
      {Key? key,
      required this.profilePicture,
      required this.title,
      required this.subtitle,
      required this.buttonTitle,
      required this.verifiedText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ProfilePictureAtom(profilePicture: profilePicture),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleAtom(
                    title: title,
                    fontSize: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const VerifiedAtom(),
                  const SizedBox(width: 4),
                  VerifiedText(
                    verifiedText: verifiedText,
                  ),
                ],
              ),
              SubtitleAtom(subtitle: subtitle),
            ],
          ),
          const Spacer(),
          ButtonAtom(
              title: buttonTitle,
              textStyle: GoogleFonts.notoSans(
                color: Colors.white,
              ),
              color: const Color(0xff01B99F))
        ],
      ),
    );
  }
}
