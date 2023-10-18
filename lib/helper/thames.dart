import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color Primery
const Color primeryColorLight = Color.fromARGB(255, 78, 129, 188);
const Color primeryColorMedium = Color.fromARGB(255, 31, 105, 190);
const Color primeryColorDark = Color.fromARGB(255, 8, 91, 186);

//Color General
const Color generalColorWith = Color.fromARGB(255, 246, 246, 246);
const Color generalColorGreyLight = Color.fromARGB(255, 224, 224, 224);
const Color generalColorGreyDark = Color.fromARGB(255, 126, 126, 126);
const Color generalColorDark = Color.fromARGB(255, 23, 23, 23);

//Font
TextStyle tsHeader({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorDark,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  )
);

TextStyle tsParaghraph20 ({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorDark,
    fontWeight: fontWeight,
    fontSize: 20
  )
);

TextStyle tsParaghraph16({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorDark,
    fontWeight: fontWeight,
    fontSize: 16
  )
);

TextStyle tsParaghraph12({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorDark,
    fontWeight: fontWeight,
    fontSize: 12
  )
);

TextStyle tsParaghraph10({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorDark,
    fontWeight: fontWeight,
    fontSize: 10
  )
);

//Asset Image
String onBoarding1 = "assets/images/image_onboarding1.svg";
String onBoarding2 = "assets/images/image_onboarding2.svg";
String onBoarding3 = "assets/images/image_onboarding3.svg";

//Asset Icon
String back = "assets/icons/icon_back.svg";
String cart = "assets/icons/icon_cart.svg";