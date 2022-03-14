import 'package:flutter/material.dart';
import 'package:trendy/screens/app/drawer/drawer_content.dart';
import 'package:trendy/screens/app/search/search_operator.dart';

class DrawerContentScreen extends StatefulWidget {
  const DrawerContentScreen({Key? key}) : super(key: key);

  @override
  _DrawerContentScreenState createState() => _DrawerContentScreenState();
}

class _DrawerContentScreenState extends State<DrawerContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
             SearchOperator(),
            Expanded(
                child: DrawerContent(
              textColor: Colors.white,
              margin: 30,
              elevatedButtonColor: Colors.black,
              borderColor: Colors.black,
              isLinearProgress: false,
            )),
          ],
        ),
      ),
    );
  }
}
