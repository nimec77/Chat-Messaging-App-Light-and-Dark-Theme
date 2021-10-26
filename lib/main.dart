import 'package:flutter/material.dart';
import 'package:chat/screens/welcome/splash_screen.dart';
import 'package:chat/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: SplashScreen(),
    );
  }
}
