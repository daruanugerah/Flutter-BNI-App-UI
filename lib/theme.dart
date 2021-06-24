import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

TextStyle orangeTextStyle = GoogleFonts.rubik(
  color: orangeColor,
);

TextStyle whiteTextStyle = GoogleFonts.rubik(
  color: Colors.white,
);

TextStyle primaryTextStyle = GoogleFonts.rubik(
  color: blackColor,
);

TextStyle subtitleTextStyle = GoogleFonts.rubik(
  color: greyColor,
);

TextStyle secondaryTextStyle = GoogleFonts.rubik(
  color: blackColor.withOpacity(0.3),
);

Color blackColor = Color(0xff4E4E4E);
Color orangeColor = Color(0xffF55923);
Color greyColor = Color(0xff8E8E8E);
