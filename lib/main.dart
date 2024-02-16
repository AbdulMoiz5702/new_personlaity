import 'package:flutter/material.dart';
import 'package:new_personlaity/Splash_screen.dart';
import 'package:new_personlaity/colors.dart';

import 'intoScreen.dart';

void main() {
  runApp(PersonalityTestApp());
}

class PersonalityTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Personality Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backGroundColor,
        appBarTheme: AppBarTheme(
          color: appBarColor,
          elevation: 10,
        )
      ),
      home: SplashScreen(),
    );
  }
}






