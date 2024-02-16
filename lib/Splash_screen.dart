import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_personlaity/colors.dart';
import 'package:new_personlaity/intoScreen.dart';
import 'package:new_personlaity/textwidgets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, CupertinoPageRoute(builder: (context)=> IntroductionScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage(gif),fit: BoxFit.cover,isAntiAlias: true,),
            ),
            width: MediaQuery.sizeOf(context).width * 1,
            height: MediaQuery.sizeOf(context).height * 1,
          ),
      ),
    );
  }
}
