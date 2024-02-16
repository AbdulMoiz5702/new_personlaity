import 'package:flutter/material.dart';
import 'package:new_personlaity/textwidgets.dart';



class CustomButton extends StatelessWidget {
  const CustomButton({required this.onTap, this.color = Colors.orange,required this.title});
  final String title ;
  final Color color ;
  final VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Center(child: normalText(title:title,fontSize: 16.0 ),),
      ),
    );
  }
}
