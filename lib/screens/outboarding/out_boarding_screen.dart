import 'package:flutter/material.dart';
import 'package:trendy/Widgets/page_view_indicator.dart';
import 'package:trendy/screens/outboarding/out_boarding_content.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int value) {
                setState(() {
                  _currentPageIndex = value;
                });
              },
              scrollDirection: Axis.horizontal,
              children: [
                OutBoardingContent(
                  title: 'discover Trends',
                  body: 'Over thousands of stylish products online',
                  image: Image.asset('images/out_boarding_screen/image1.jpg'),
                ),
                OutBoardingContent(
                  title: 'Add to My Wishlist',
                  body: 'Choose the items You’re most interested in',
                  image: Image.asset('images/out_boarding_screen/image2.jpg'),
                  currentPageIndex: _currentPageIndex,
                ),
                OutBoardingContent(
                  title: 'It\'s Simply For You',
                  body: 'A smart experience, from browsing to delivery',
                  image: Image.asset('images/out_boarding_screen/image3.jpg'),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 0, top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageViewIndicator(
                    selected: _currentPageIndex == 0, marginEnd: 5),
                PageViewIndicator(
                    selected: _currentPageIndex == 1, marginEnd: 5),
                PageViewIndicator(selected: _currentPageIndex == 2),
              ],
            ),
          ),
          Visibility(
            visible: _currentPageIndex == 2,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 40,
                bottom: 70,
                start: 113,
                end: 112,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/authentication_screen');
                },
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(150, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
