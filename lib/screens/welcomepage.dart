import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:project2/pages/button.dart';
import 'package:project2/pages/clipper.dart';
import 'package:project2/pages/my_text.dart';
import 'package:project2/pages/welcomeimage.dart';
import 'package:project2/screens/login_page.dart';
import 'package:project2/screens/signup_page.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Clipper(height: 260),
            const MyText(
              name: "Welcome to AppName",
              color: Color.fromARGB(255, 82, 97, 201),
            ),
            const SizedBox(height: 2),
            const WelcomeImage(),
            const SizedBox(height: 30),
            Button(
              color: const Color.fromARGB(255, 82, 97, 201),
              //color: Color.fromARGB(255, 110, 126, 214),
              name: 'Sign Up',
              fontsize: 19,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const SignUpPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Button(
              color: const Color.fromARGB(255, 82, 97, 201),
              //color: Color.fromARGB(255, 110, 126, 214),
              name: 'Sign In',
              fontsize: 19,
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            const Center(child: Text('or')),
            SignInButton(
              Buttons.Google,
              elevation: 5,
              text: "Sign in with Google",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}