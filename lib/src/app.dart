import 'package:assignment_app/src/pages/home.dart';
import 'package:assignment_app/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  static const String routeName = "App";
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Constants.defaultGreen,
          scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    );
  }
}
