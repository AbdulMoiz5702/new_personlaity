import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_personlaity/colors.dart';
import 'package:new_personlaity/custom_button.dart';
import 'package:new_personlaity/intoScreen.dart';
import 'package:new_personlaity/textwidgets.dart';

class ResultScreen extends StatelessWidget {
  final int totalScore;

  ResultScreen({required this.totalScore});

  String getResult() {
    if (totalScore >= 80) {
      return 'You have a confident and outgoing personality!';
    } else if (totalScore >= 60) {
      return 'You have a balanced and adaptable personality.';
    } else if (totalScore >= 40) {
      return 'You have a reserved and cautious personality.';
    } else {
      return 'You have a shy and introverted personality.';
    }
  }

  List<String> getDescription() {
    if (totalScore >= 80) {
      return [
        'Enjoys being the center of attention and socializing with others.',
        'Thrives in new and challenging situations.',
        'Expresses opinions and ideas openly.',
        'Comfortable taking risks and seeking new adventures.',
        'Natural leader who enjoys guiding and motivating others.'
      ];
    } else if (totalScore >= 60) {
      return [
        'Flexible and open-minded in various situations.',
        'Adapts well to changes and challenges.',
        'Values both social interactions and personal time.',
        'Maintains a stable and composed demeanor under pressure.',
        'Able to adjust communication style based on different contexts and individuals.'
      ];
    } else if (totalScore >= 40) {
      return [
        'Prefers observing rather than actively participating in social settings.',
        'Takes time to build trust and form deep connections with others.',
        'Thinks carefully before making decisions or taking risks.',
        'Values predictability and stability in daily life.',
        'Enjoys solitude and introspection for personal growth.'
      ];
    } else {
      return [
        'Feels uncomfortable in large social gatherings and prefers solitude.',
        'Takes time to warm up to new people and environments.',
        'Tends to avoid confrontation and prefers to keep a low profile.',
        'Values close relationships with a small circle of trusted individuals.',
        'Enjoys activities that allow for self-reflection and introspection.'
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: largeText(title: 'Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            largeText(title: getResult(),color: buttonColor),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ListView(
              shrinkWrap: true,
              children: getDescription().map((desc) => Container(
                margin: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor:Colors.white12,
                  title: smallText(title: desc,fontSize: 13.0),
                ),
              )).toList(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => IntroductionScreen()));
              },
              title: 'Try Again !',
            ),
          ],
        ),
      ),
    );
  }
}
