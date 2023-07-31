import 'package:assignment_app/src/widgets/atoms/post_atoms/post_action_atom.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class PostActionMolecule extends StatelessWidget {
  const PostActionMolecule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const PostActionAtom(
            icon: Icon(
              Icons.favorite_border,
              color: Constants.defaultIconColor,
            ),
            text: '5',
          ),
          const SizedBox(width: 16),
          PostActionAtom(
            icon: Image.asset(
              Constants.commentImage,
              color: Constants.defaultIconColor,
            ),
            text: '5',
          ),
          const SizedBox(width: 16),
          const PostActionAtom(
              icon: Icon(
            Icons.bookmark_outline,
            color: Constants.defaultIconColor,
          )),
          const SizedBox(width: 16),
          const PostActionAtom(
              icon: Icon(
            Icons.more_horiz,
            color: Constants.defaultIconColor,
          ))
        ],
      ),
    );
  }
}
