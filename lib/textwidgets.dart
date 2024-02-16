import 'package:flutter/material.dart';



Widget largeText({title , color = Colors.white,fontSize = 18.0, fontWeight = FontWeight.bold}){
  return Text(title,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontWeight),);
}


Widget normalText({title , color = Colors.white,fontSize = 14.0, fontWeight = FontWeight.w500}){
  return Text(title,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontWeight),);
}


Widget smallText({title , color = Colors.white,fontSize = 10.0, fontWeight = FontWeight.w300}){
  return Text(title,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontWeight),);
}