import 'package:assignment_app/src/widgets/constants.dart';
import 'package:assignment_app/src/widgets/molecules/user_header_input_molecule.dart';
import 'package:assignment_app/src/widgets/organism/post_input_organism.dart';
import 'package:assignment_app/src/widgets/templates/home_template.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeTemplate(
      appBarTitle: Constants.appbarTitle,
      postInputOrganism: PostInputOrganism(
        postTitle: Constants.postTitle,
        postDescription: Constants.postDescription,
        userHeaderInputMolecule: UserHeaderInputMolecule(
            profilePicture: Constants.userImage,
            title: Constants.userHeaderTitle,
            subtitle: Constants.userHeaderSubtitle,
            buttonTitle: Constants.userHeaderButtonTitle,
            verifiedText: Constants.userHeaderVerifiedText),
      ),
    );
  }
}
