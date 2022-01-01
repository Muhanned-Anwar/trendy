import 'package:flutter/material.dart';
import 'package:trendy/screens/app/drawer/drawer_content.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerContent(
        textColor: Colors.black,
        margin: 0,
        elevatedButtonColor: Colors.white,
        borderColor: Colors.white,
        isLinearProgress: true,
      ),
    );
  }
}
