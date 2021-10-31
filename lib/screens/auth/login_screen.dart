import 'package:flutter/material.dart';
import 'package:flutter_first_application/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset(
          'assets/images/login.png',
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 18.0,
        ),
        const Text(
          'Welcome to Flutter',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Enter your email', labelText: 'Email'),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Enter your password', labelText: 'Password'),
              ),
              const SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changedButton = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  // Navigator.pushNamed(context, Routes.home);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changedButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changedButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                  decoration: BoxDecoration(
                      color: changedButton ? Colors.green : Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 8)),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, Routes.home);
              //   },
              //   child: const Text('Login'),
              //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
              // )
            ],
          ),
        ),
      ]),
      color: Colors.white,
    );
  }
}
