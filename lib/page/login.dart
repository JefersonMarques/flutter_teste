import 'package:cargotruck/data/text.dart';
import 'package:flutter/material.dart';
import 'package:cargotruck/core/colors.dart';
import 'package:cargotruck/core/space.dart';
import 'package:cargotruck/core/text_style.dart';
import 'package:cargotruck/page/final_test.dart';
import 'package:cargotruck/widget/main_button.dart';
import 'package:cargotruck/widget/text_fild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBG,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceVH(height: 50.0),
              Text(
                textLogin[0],
                style: headline1,
              ),
              SpaceVH(height: 10.0),
              Text(
                textLogin[1],
                style: headline3,
              ),
              SpaceVH(height: 60.0),
              textFild(
                controller: userName,
                image: 'user.svg',
                hintTxt: textLogin[2],
              ),
              textFild(
                controller: userPass,
                image: 'hide.svg',
                isObs: true,
                hintTxt: textLogin[3],
              ),
              SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      textLogin[4],
                      style: headline3,
                    ),
                  ),
                ),
              ),
              SpaceVH(height: 100.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => FinalTest()));
                      },
                      text: textLogin[5],
                      btnColor: orangeButton,
                    ),
                    SpaceVH(height: 20.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => FinalTest()));
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: textLogin[6],
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: textLogin[7],
                            style: headlineDot.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
