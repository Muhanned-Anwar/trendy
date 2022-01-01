import 'package:flutter/material.dart';
import 'package:trendy/Widgets/page_view_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 562,
                width: double.infinity,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      onPageChanged: (int value) {
                        setState(() {
                          _currentPageIndex = value;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 250),
                                  Image.asset(
                                    'images/app/main_screen/home_screen/group.png',
                                  ),
                                  const SizedBox(height: 51),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Shope Now'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        elevation: 0,
                                        side: const BorderSide(
                                          width: 1,
                                          color: Colors.white,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      alignment: AlignmentDirectional.bottomCenter,
                      margin: const EdgeInsets.only(bottom: 0, top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PageViewIndicator(
                            selected: _currentPageIndex == 0,
                            marginEnd: 5,
                            color: Colors.white,
                          ),
                          PageViewIndicator(
                            selected: _currentPageIndex == 1,
                            marginEnd: 5,
                            color: Colors.white,
                          ),
                          PageViewIndicator(
                            selected: _currentPageIndex == 2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 562,
                width: double.infinity,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      onPageChanged: (int value) {
                        setState(() {
                          _currentPageIndex = value;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image3.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/app/main_screen/home_screen/image2.png',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/app/main_screen/home_screen/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      alignment: AlignmentDirectional.bottomCenter,
                      margin: const EdgeInsets.only(bottom: 0, top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PageViewIndicator(
                            selected: _currentPageIndex == 0,
                            marginEnd: 5,
                            color: Colors.white,
                          ),
                          PageViewIndicator(
                            selected: _currentPageIndex == 1,
                            marginEnd: 5,
                            color: Colors.white,
                          ),
                          PageViewIndicator(
                            selected: _currentPageIndex == 2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
