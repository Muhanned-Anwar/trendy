import 'package:flutter/material.dart';

import 'app/search/search_operator.dart';

class NewInScreen extends StatefulWidget {
  const NewInScreen({Key? key}) : super(key: key);

  @override
  _NewInScreenState createState() => _NewInScreenState();
}

class _NewInScreenState extends State<NewInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'NEW ARRIVALS',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 36,
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 61, bottom: 5),
            child: ListView(
              children: [
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  width: 400,
                  height: 514,
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/app/main_screen/new_in/image1.png',
                        // width: 345,
                        // height: 514,
                        filterQuality: FilterQuality.high,
                        alignment: Alignment.topCenter,
                      ),
                      Container(
                        // color: Colors.red,
                          height: double.infinity,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.all(10),
                          child: Icon(Icons.favorite,color: Colors.red,)),
                    ],
                  ),
                )
                // Container(
                //   // margin: const EdgeInsets.only(
                //   //     top: 61, bottom: 18, left: 3, right: 3),
                //   height: 812,
                //   width: double.infinity,
                //   child: Stack(
                //     children: [
                //       Container(
                //           width: double.infinity,
                //           height: double.infinity,
                //           child: Image.asset(
                //               'images/app/main_screen/new_in/image1.png')),
                //       Container(
                //           color: Colors.black, child: Icon(Icons.favorite)),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0),
            child: Row(
              children: [
                SearchOperator(
                  width: 300,
                ),
                SizedBox(
                  width: 24,
                  height: 36,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.only(
                          top: 1, bottom: 0, left: 0, right: 0),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      'images/app/main_screen/icons/new_in/ic_filter.png',
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 24,
                  height: 36,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.only(
                          top: 1, bottom: 0, left: 0, right: 0),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      'images/app/main_screen/icons/new_in/ic_layout_a.png',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
