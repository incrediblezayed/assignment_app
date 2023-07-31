import 'package:assignment_app/src/widgets/atoms/app_bar_atoms/index.dart';
import 'package:assignment_app/src/widgets/atoms/post_atoms/post_description_atom.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class PostContentMolecule extends StatelessWidget {
  final String postTitle;

  const PostContentMolecule({Key? key, required this.postTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAtom(title: postTitle, fontSize: 14),
          const SizedBox(
            height: 10,
          ),
          const PostDescriptionAtom(
              postDescription: Constants.postDescription,
              fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
