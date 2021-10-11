import 'package:flutter/material.dart';
import 'package:flutter_first_application/screens/auth/forgot_password_screen.dart';
import 'package:flutter_first_application/screens/auth/register_screen.dart';
import 'package:flutter_first_application/screens/auth/login_screen.dart';
import 'package:flutter_first_application/screens/home/home_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
      },
    );
  }
}
