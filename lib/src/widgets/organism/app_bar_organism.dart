import 'package:assignment_app/src/widgets/molecules/app_bar_molecule.dart';
import 'package:flutter/material.dart';

class AppBarOrganism extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  const AppBarOrganism({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: AppBarMolecule(appBarTitle: appBarTitle));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
