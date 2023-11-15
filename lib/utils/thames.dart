import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color Primery
const Color primeryColorLight = Color.fromARGB(255, 78, 129, 188);
const Color primeryColorMedium = Color.fromARGB(255, 31, 105, 190);
const Color primeryColorDark = Color.fromARGB(255, 8, 91, 186);

//Color General
const Color generalColorWhite = Color.fromARGB(255, 246, 246, 246);
const Color generalColorGreyLight = Color.fromARGB(255, 224, 224, 224);
const Color generalColorGreyDark = Color.fromARGB(255, 126, 126, 126);
const Color generalColorDark = Color.fromARGB(255, 23, 23, 23);

//BackDrop
BoxShadow primaryBackDrop() => BoxShadow(
  color: primeryColorDark.withOpacity(0.15),
  offset: Offset(0, 0),
  blurRadius: 10,
);

BoxShadow generalBackDrop() =>  BoxShadow(
  color: primeryColorMedium.withOpacity(0.1),
  offset: Offset(0, 3),
  blurRadius: 6,
);

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

TextStyle tsParaghraph20White({ 
  FontWeight? fontWeight
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorWhite,
    fontWeight: fontWeight,
    fontSize: 20
  )
);

TextStyle tsParaghraph16({ 
  FontWeight? fontWeight,
  bool isBlue = false
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: isBlue ? primeryColorMedium : generalColorDark,
    fontWeight: fontWeight,
    fontSize: 16
  )
);

TextStyle tsParaghraph16Red({ 
  FontWeight? fontWeight,
  bool isBlue = false
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: Colors.red,
    fontWeight: fontWeight,
    fontSize: 16
  )
);

TextStyle tsParaghraph16White({ 
  FontWeight? fontWeight,
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorWhite,
    fontWeight: fontWeight,
    fontSize: 16
  )
);

TextStyle tsParaghraph14({ 
  FontWeight? fontWeight,
  bool isBlue = false,
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: isBlue ? primeryColorMedium : generalColorDark,
    fontWeight: fontWeight,
    fontSize: 14
  )
);

TextStyle tsParaghraph14White({ 
  FontWeight? fontWeight,
 }) => GoogleFonts.poppins(
  textStyle: TextStyle(
    color: generalColorWhite,
    fontWeight: fontWeight,
    fontSize: 14
  )
);

TextStyle tsParaghraph12({ 
  FontWeight? fontWeight,
  
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

//Asset Random Shape
String randomShape1 = "assets/images/rs-1.png";
String randomShape2 = "assets/images/rs-2.png";
String randomShape3 = "assets/images/rs-3.png";
String randomShape4 = "assets/images/rs-4.png";

//Asset Icon
String back = "assets/icons/icon_back.svg";
String next = "assets/icons/icon_next.svg";
String cart = "assets/icons/icon_cart.svg";
String addCartHorizontal = "assets/icons/icon_addcart_horizontal.svg";
String rate = "assets/icons/icon_rate.svg";
String plus = "assets/icons/icon_plus.svg";
String minus = "assets/icons/icon_minus.svg";
String facebook = "assets/icons/icon_facebook.svg";
String google = "assets/icons/icon_google.svg";
String twitter = "assets/icons/icon_twitter.svg";
String addCartVertical = "assets/icons/icon_addcart_vertical.svg";
String addCartButton = "assets/icons/icon_addcart_button.svg";
String test = "assets/images/00027-2078024940.png";