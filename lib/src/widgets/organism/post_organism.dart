import 'package:assignment_app/src/widgets/atoms/post_atoms/post_action_atom.dart';
import 'package:assignment_app/src/widgets/atoms/post_atoms/post_image_atom.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:assignment_app/src/widgets/molecules/add_comment_molecule.dart';
import 'package:assignment_app/src/widgets/molecules/comment_molecule.dart';
import 'package:assignment_app/src/widgets/molecules/post_actions_molecule.dart';
import 'package:assignment_app/src/widgets/molecules/post_content_molecule.dart';
import 'package:assignment_app/src/widgets/molecules/post_tags_molcule.dart';
import 'package:assignment_app/src/widgets/molecules/user_header_input_molecule.dart';
import 'package:assignment_app/src/widgets/molecules/user_header_molecule.dart';
import 'package:flutter/material.dart';

class PostOrganism extends StatelessWidget {
  final UserHeaderInputMolecule userHeaderInputMolecule;
  final String postTitle;
  final String description;

  const PostOrganism(
      {Key? key,
      required this.userHeaderInputMolecule,
      required this.postTitle,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserHeaderMolecule(
            profilePicture: userHeaderInputMolecule.profilePicture,
            title: userHeaderInputMolecule.title,
            subtitle: userHeaderInputMolecule.subtitle,
            buttonTitle: userHeaderInputMolecule.buttonTitle,
            verifiedText: userHeaderInputMolecule.verifiedText),
        PostContentMolecule(
          postTitle: postTitle,
        ),
        const PostTagMolecules(),
        const PostImageAtom(),
        const PostActionMolecule(),
        const Divider(
          height: 1,
          thickness: 1,
          color: Constants.tagBackgroundColor,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CommentMolecule(
              profilePicture: userHeaderInputMolecule.profilePicture,
              comment: Constants.comment1,
              actions: [
                const PostActionAtom(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Constants.defaultIconColor,
                  ),
                  text: '5',
                ),
                PostActionAtom(
                  icon: Image.asset(
                    Constants.commentImage,
                    color: Constants.defaultIconColor,
                  ),
                  text: '5',
                ),
              ],
              replies: [
                CommentMolecule(
                  backgroundColor: const Color(0xffFBB0AE),
                  profilePicture: Constants.profile2,
                  comment: Constants.comment2,
                  actions: const [
                    PostActionAtom(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Constants.defaultIconColor,
                      ),
                      text: '5',
                    ),
                  ],
                  replies: const [],
                  verified: false,
                  title: Constants.user2,
                  verifiedText: Constants.userHeaderVerifiedText,
                ),
              ],
              verified: true,
              title: userHeaderInputMolecule.title,
              verifiedText: userHeaderInputMolecule.verifiedText),
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: Constants.tagBackgroundColor,
        ),
        const AddCommentMolecule()
      ],
    );
  }
}
