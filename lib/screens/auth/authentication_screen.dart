import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/auth_login.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/auth/auth_background.jpg',
            fit: BoxFit.none,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(bottom: 155),
                width: double.infinity,
                child: Image.asset(
                  'images/auth/logo_white.png',
                ),
              ),
              AuthLogin(
                title: 'Facebook',
                image: Image.asset('images/Icons/facebookIcon.png'),
                function: () {},
                backgroundColor: const Color(0xFF475993),
              ),
              const SizedBox(height: 15),
              AuthLogin(
                title: 'Google',
                image: Image.asset('images/Icons/googleIcon.png'),
                function: () {},
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
              const SizedBox(height: 15),
              AuthLogin(
                title: 'Sign Up with Email',
                image: Image.asset('images/Icons/mailIcon.png'),
                function: () {},
                backgroundColor: Colors.black,
              ),
              const SizedBox(height: 15),
              AuthLogin(
                title: 'Login',
                function: () {
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
