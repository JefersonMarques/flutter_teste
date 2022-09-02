import 'package:flutter/material.dart';
import 'package:cargotruck/core/style.dart';
import 'package:cargotruck/page/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Start Trucker',
        debugShowCheckedModeBanner: false,
        theme: Stlyes.themeData(),
        home: HomePage(),
      ),
    );
  }
}
