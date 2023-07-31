import 'package:assignment_app/src/widgets/atoms/post_atoms/post_description_atom.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class AddCommentMolecule extends StatelessWidget {
  static const String routeName = "AddCommentMolecule";
  const AddCommentMolecule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(children: [
        Image.asset(
          Constants.pickImage,
          color: Constants.defaultIconColor,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: PostDescriptionAtom(postDescription: Constants.hintText)),
        PostDescriptionAtom(postDescription: Constants.doneText)
      ]),
    );
  }
}
