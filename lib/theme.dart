import 'package:chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Let's apply light and dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: Colors.white,
    //   selectedItemColor: contentColorLightTheme.withOpacity(0.7),
    //   unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
    //   selectedIconTheme: IconThemeData(color: primaryColor),
    //   showUnselectedLabels: true,
    // ),
    inputDecorationTheme: inputDecorationTheme.copyWith(
        fillColor: kPrimaryColor.withOpacity(0.05)),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: contentColorLightTheme,
    //   selectedItemColor: Colors.white70,
    //   unselectedItemColor: contentColorDarkTheme.withOpacity(0.32),
    //   selectedIconTheme: IconThemeData(color: primaryColor),
    //   showUnselectedLabels: true,
    // ),
    inputDecorationTheme: inputDecorationTheme,
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
final inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: kContentColorDarkTheme.withOpacity(0.08),
  contentPadding: EdgeInsets.symmetric(
      horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: const BorderRadius.all(Radius.circular(50)),
  ),
);
