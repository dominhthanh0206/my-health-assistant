import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class MyFontStyles{
  // header text using blackText
  static const appBar = TextStyle(color: MyColors.blackText, fontSize: 20, fontWeight: FontWeight.bold);
  static const mainColorH1 = TextStyle(color: MyColors.blackText, fontSize: 17, fontWeight: FontWeight.bold);
  static const mainColorH2 = TextStyle(color: MyColors.blackText, fontSize: 15, fontWeight: FontWeight.bold);
  static const mainColorH3 = TextStyle(color: MyColors.blackText, fontSize: 14, fontWeight: FontWeight.bold);
  static const mainColorH4 = TextStyle(color: MyColors.blackText, fontSize: 13, fontWeight: FontWeight.bold);
  static const mainColorH5 = TextStyle(color: MyColors.blackText, fontSize: 12, fontWeight: FontWeight.bold);

  // header text using blackText 
  static const blackColorH1 = TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
  static const blackColorH2 = TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
  static const blackColorH3 = TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold);
  static const blackColorH4 = TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  static const blackColorH5 = TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold);

  // normal text with 3 main colors: black, white, grey
  static const normalWhiteText = TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal);
  static const normalBlackText = TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal);
  static const normalGreyText = TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal);
}