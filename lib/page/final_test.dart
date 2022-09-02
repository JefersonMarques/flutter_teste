import 'package:flutter/material.dart';
import 'package:cargotruck/core/colors.dart';
import 'package:cargotruck/core/space.dart';
import 'package:cargotruck/core/text_style.dart';
import 'package:cargotruck/widget/main_button.dart';
import 'package:cargotruck/widget/text_fild.dart';
import 'package:lottie/lottie.dart';

class FinalTest extends StatefulWidget {
  const FinalTest({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<FinalTest> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: ListView(
        children: [
          // Load an animation and its images from a zip file
          Lottie.asset(
            'lottie/check.json',
            repeat: false,
          ),
        ],
      ),
    );
  }
}
