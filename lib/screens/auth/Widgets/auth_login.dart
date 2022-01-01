import 'package:flutter/material.dart';

class AuthLogin extends StatelessWidget {
  final String title;
  final Image? image;
  final void Function() function;
  final Color backgroundColor;
  final Color textColor;

  const AuthLogin({
    Key? key,
    required this.title,
    this.image,
    required this.function,
    required this.backgroundColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 48,
      color: backgroundColor,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                // right: 89.5,
                top: 14,
                bottom: 14,
              ),
              child: SizedBox(
                width: 20,
                height: 20,
                child: image,
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
