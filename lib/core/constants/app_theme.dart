import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primary = const Color(0xff242424);
  static Color scaffoldBack = const Color(0xff292F3F);
  static Color dartContainer = const Color(0xff272A35);
  static Color lightContainer = const Color(0xff373E4E);

  static Color blackText = const Color(0xff303030);
  static Color grey = const Color(0xff565E70);
  static Color white = const Color(0xffFFFFFF);
  static Color lightGrey = const Color(0xff99999B);
  static Color dividerGrey = const Color(0xffE0E0E0);
  static Color dividerblack = const Color(0xff505050);
  static Color green = const Color(0xff32CD32);
  static Color red = const Color(0xffE44235);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(
          fontSize: 27, fontWeight: FontWeight.w400, color: white),
      displayMedium: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.w400, color: white),
      displaySmall: GoogleFonts.roboto(
          fontSize: 18, fontWeight: FontWeight.w400, color: white),
      bodyMedium: GoogleFonts.roboto(
          fontSize: 15, fontWeight: FontWeight.w400, color: white),
      bodySmall: GoogleFonts.roboto(
          fontSize: 13, fontWeight: FontWeight.w100, color: white),
    ),
    primaryColor: primary,
    scaffoldBackgroundColor: scaffoldBack,
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: primarylight,
    //   selectedItemColor: white,
    //   unselectedItemColor: const Color(0xff999999),
    // ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.kanit(
            fontSize: 20, fontWeight: FontWeight.bold, color: blackText)),
  );
}
