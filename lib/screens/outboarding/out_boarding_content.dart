import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {
  final String title;
  final String body;
  final Image image;
  final int currentPageIndex;

  const OutBoardingContent({
    Key? key,
    required this.title,
    required this.body,
    required this.image,
    this.currentPageIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 90),
            width: 206,
            height: 298,
            child: Stack(
              children: [
                Container(
                  width: 188,
                  height: 282,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: image,
                ),
                Visibility(
                  visible: currentPageIndex == 1,
                  child: Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 88,
                          height: 88,
                          child: Image.asset('images/Icons/Oval.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          width: 72,
                          height: 72,
                          child: Image.asset('images/Icons/Oval.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.all(28),
                          width: 32,
                          height: 32,
                          child: Image.asset('images/Icons/btn_wishlist.png'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 70),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            body,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
