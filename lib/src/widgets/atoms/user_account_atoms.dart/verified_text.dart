import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifiedText extends StatelessWidget {
  final String verifiedText;
  const VerifiedText({Key? key, required this.verifiedText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      verifiedText,
      style: GoogleFonts.notoSans(
        color: const Color(0xff919EB6),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
