import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'REGISTER',
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
          const TextField(
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 325, top: 31, bottom: 29),
              hintText: 'Email',
            ),
          ),
          const TextField(
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 298, top: 31, bottom: 29),
              hintText: 'Password',
            ),
          ),
          const TextField(
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 289, top: 31, bottom: 29),
              hintText: 'First Name',
            ),
          ),
          const TextField(
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 290, top: 31, bottom: 29),
              hintText: 'Last Name',
            ),
          ),
          const TextField(
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            minLines: 1,
            maxLines: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 268, top: 31, bottom: 29),
              hintText: 'Mobile Phone',
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, top: 30, bottom: 30, right: 15),
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 26, bottom: 24, right: 49),
                  width: 276,
                  height: 30,
                  child: const Text(
                    'I would like to receive the latest news from TRENDY by email',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                )
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1),
          Container(
            height: 80,
            width: double.infinity,
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, top: 30, bottom: 30, right: 15),
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 26, bottom: 24, right: 10),
                  width: 276,
                  height: 30,
                  child: const Text(
                    'I would like to receive the latest news from TRENDY by email',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1),
          Container(
            margin: const EdgeInsetsDirectional.only(
                top: 60, bottom: 20, start: 30, end: 30),
            width: 315,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
