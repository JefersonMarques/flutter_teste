// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cargotruck/widget/main_button.dart';
import 'package:cargotruck/widget/text_carousel.dart';
import 'package:flutter/material.dart';
import 'package:cargotruck/core/colors.dart';
import 'package:cargotruck/core/space.dart';
import 'package:cargotruck/core/text_style.dart';
import 'package:cargotruck/data/text.dart';
import 'package:cargotruck/page/login.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blueBG,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 50.0, top: 50.0),
            child: Stack(children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: SvgPicture.asset(
                  "image/item_logo.svg",
                  height: 30.0,
                ),
              ),
            ]),
          ),
          Container(
            child: Stack(children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: SvgPicture.asset(
                  "image/item_truck.svg",
                  height: MediaQuery.of(context).size.height / 1.8,
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
                end: 20.0, top: MediaQuery.of(context).size.height / 4),
            child: Stack(children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: SvgPicture.asset(
                  "image/item_man.svg",
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Carousel(),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage()));
                    },
                    btnColor: orangeButton,
                    text: 'Próximo',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
