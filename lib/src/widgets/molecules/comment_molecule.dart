import 'package:assignment_app/src/widgets/atoms/post_atoms/post_action_atom.dart';
import 'package:assignment_app/src/widgets/atoms/post_atoms/post_description_atom.dart';
import 'package:assignment_app/src/widgets/atoms/user_account_atoms.dart/index.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class CommentMolecule extends StatelessWidget {
  final String profilePicture;
  final String title;
  final String comment;
  final bool verified;
  final String verifiedText;
  final List<PostActionAtom> actions;
  final List<CommentMolecule> replies;
  final Color? backgroundColor;
  const CommentMolecule(
      {Key? key,
      required this.profilePicture,
      required this.comment,
      required this.actions,
      required this.replies,
      required this.verified,
      required this.title,
      required this.verifiedText,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfilePictureAtom(
          profilePicture: profilePicture,
          backgroundColor: backgroundColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 44,
                child: Row(
                  children: [
                    TitleAtom(title: title, fontSize: 14),
                    const SizedBox(
                      width: 4,
                    ),
                    if (verified) ...[
                      const VerifiedAtom(),
                      const SizedBox(width: 4)
                    ],
                    VerifiedText(verifiedText: verifiedText),
                    const Spacer(),
                    const PostActionAtom(
                        icon: Icon(
                      Icons.more_horiz,
                      color: Constants.defaultIconColor,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              PostDescriptionAtom(postDescription: comment),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: actions
                    .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 8), child: e))
                    .toList(),
              ),
              const SizedBox(
                height: 16,
              ),
              ...replies
            ],
          ),
        )
      ],
    );
  }
}
