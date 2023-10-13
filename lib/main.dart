import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_food_recipes_app_ui_6/constant.dart';
import 'package:simple_food_recipes_app_ui_6/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: "Hellix",
      ),
      home: const HomeScreen(),
    );
  }
}
