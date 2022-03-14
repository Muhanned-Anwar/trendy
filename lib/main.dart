import 'package:flutter/material.dart';
import 'package:trendy/Widgets/advertising.dart';
import 'package:trendy/screens/app/drawer/drawer_content_screen.dart';
import 'package:trendy/screens/app/main_screen.dart';
import 'package:trendy/screens/auth/authentication_screen.dart';
import 'package:trendy/screens/auth/login_screen.dart';
import 'package:trendy/screens/auth/register_screen.dart';
import 'package:trendy/screens/auth/reset_password_screen.dart';
import 'package:trendy/screens/launch_screen.dart';
import 'package:trendy/screens/new_in_screen.dart';
import 'package:trendy/screens/outboarding/out_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/main_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/authentication_screen': (context) => const AuthenticationScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/reset_password_screen': (context) => const ResetPasswordScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/main_screen': (context) => const MainScreen(),
        '/advertising': (context) => const Advertising(),
        '/drawer_content_screen': (context) => const DrawerContentScreen(),
        '/new_in_screen': (context) => const NewInScreen(),
      },
    );
  }
}
