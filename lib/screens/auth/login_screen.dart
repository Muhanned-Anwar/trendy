import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendy/screens/auth/Widgets/auth_login.dart';
import 'package:trendy/utils/helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register_screen');
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextField(
            controller: _emailTextEditingController,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 325, top: 31, bottom: 29),
              hintText: 'Email',
              errorText: _emailError,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red.shade300,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red.shade900,
                  width: 1,
                ),
              ),
            ),
          ),
          TextField(
            controller: _passwordTextEditingController,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 298, top: 31, bottom: 29),
              hintText: 'Password',
              errorText: _passwordError,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red.shade300,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red.shade900,
                  width: 1,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(
                top: 30, bottom: 28, start: 30, end: 30),
            width: 315,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () => performLogin(),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset_password_screen');
              },
              child: const Text(
                'Forgotten your password?',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                ),
              )),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 64,
              bottom: 15,
              start: 30,
              end: 30,
            ),
            child: AuthLogin(
              title: 'Facebook',
              image: Image.asset('images/Icons/facebookIcon.png'),
              function: () {},
              backgroundColor: const Color(0xFF475993),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: AuthLogin(
              title: 'Google',
              image: Image.asset('images/Icons/googleIcon.png'),
              function: () {},
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void performLogin() {
    if (checkData()) login();
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      return true;
    } else {
      checkFieldError();
      showSnackBar(
          context: context, message: 'Enter required data!', error: true);
      return false;
    }
  }

  void checkFieldError() {
    setState(() {
      _emailError =
          _emailTextEditingController.text.isEmpty ? 'Enter email' : null;
      _passwordError = _passwordTextEditingController.text.isEmpty
          ? 'Enter password'
          : null;
    });
  }

  void login() {
    showSnackBar(context: context, message: 'Logged is successfully');
    Navigator.pushReplacementNamed(context, '/main_screen');
  }
}
