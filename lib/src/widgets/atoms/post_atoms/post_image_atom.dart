import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class PostImageAtom extends StatelessWidget {
  const PostImageAtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Image.network(
      Constants.postImage,
      width: size.width,
      fit: BoxFit.fitWidth,
    );
  }
}
