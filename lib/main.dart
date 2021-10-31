import 'package:flutter/material.dart';
import 'package:flutter_first_application/screens/auth/forgot_password_screen.dart';
import 'package:flutter_first_application/screens/auth/register_screen.dart';
import 'package:flutter_first_application/screens/auth/login_screen.dart';
import 'package:flutter_first_application/screens/home/home_screen.dart';
import 'package:flutter_first_application/utils/routes.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
        Routes.register: (context) => const RegisterScreen(),
        Routes.forgotPassword: (context) => const ForgotPasswordScreen(),
      },
      /*
        we use "initialRoute:" to let application know where to start.
        in "routes:" when you have '/' defined, opt to use "home:"
        it will through errors.
      */
      initialRoute: Routes.login,
    );
  }
}
