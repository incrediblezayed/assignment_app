import 'package:assignment_app/src/widgets/organism/app_bar_organism.dart';
import 'package:assignment_app/src/widgets/organism/post_input_organism.dart';
import 'package:assignment_app/src/widgets/organism/post_organism.dart';
import 'package:flutter/material.dart';

class HomeTemplate extends StatelessWidget {
  final String appBarTitle;
  final PostInputOrganism postInputOrganism;

  const HomeTemplate(
      {Key? key, required this.appBarTitle, required this.postInputOrganism})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOrganism(appBarTitle: appBarTitle),
      body: SingleChildScrollView(
        child: PostOrganism(
          userHeaderInputMolecule: postInputOrganism.userHeaderInputMolecule,
          postTitle: postInputOrganism.postTitle,
          description: postInputOrganism.postDescription,
        ),
      ),
    );
  }
}
