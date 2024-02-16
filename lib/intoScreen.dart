import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_personlaity/colors.dart';
import 'package:new_personlaity/custom_button.dart';
import 'package:new_personlaity/question_screen.dart';
import 'package:new_personlaity/textwidgets.dart';



class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: normalText(title: 'Introduction'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            largeText( title :
              'Welcome to the Personality Test!',
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage(intro),fit: BoxFit.cover,isAntiAlias: true,),
              ),
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: MediaQuery.sizeOf(context).height * 0.4,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
            CustomButton(onTap: (){
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => QuestionScreen(questionIndex: 0, totalScore: 0)),
              );
            }, title: 'Take Test'),
          ],
        ),
      ),
    );
  }
}