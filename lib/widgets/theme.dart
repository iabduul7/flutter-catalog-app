import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // textTheme: Theme.of(context).textTheme,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      );
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
