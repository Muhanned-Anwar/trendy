import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy/getx/drawer_getx.dart';
import 'package:trendy/models/ui/bn_screen.dart';
import 'package:trendy/screens/app/navigation_screens/account_screen.dart';
import 'package:trendy/screens/app/drawer/drawer_content_screen.dart';
import 'package:trendy/screens/app/drawer/drawer_screen.dart';
import 'package:trendy/screens/app/navigation_screens/home_screen.dart';
import 'package:trendy/screens/app/search/search_operator.dart';
import 'package:trendy/screens/app/navigation_screens/stores_screen.dart';
import 'package:trendy/screens/app/navigation_screens/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final DrawerGetX _drawerGetX = Get.put(DrawerGetX());

  final List _bnScreens = <BnScreen>[
    BnScreen(widget: const HomeScreen(), title: 'TRENDY'),
    BnScreen(widget: const WishlistScreen(), title: 'Wishlist'),
    BnScreen(widget: const StoresScreen(), title: 'Stores'),
    BnScreen(widget: const AccountScreen(), title: 'Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        // elevation: 0,
        title: Text(
          _bnScreens[_selectedIndex].title,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.work),
            onPressed: () {},
          )
        ],
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
                _drawerGetX.changeFirstTime(0);

                _drawerGetX.changeWomenProgressValue(0);
                _drawerGetX.changeWomenMinHeightProgressValue(1);
                _drawerGetX.changeMenProgressValue(1);
                _drawerGetX.changeMenMinHeightProgressValue(2);
              },
              icon: Image.asset(
                  'images/app/main_screen/icons/menu_icons/ic_menu.png'),
            );
          },
        ),
      ),
      drawerEnableOpenDragGesture: false,
      drawer: const DrawerScreen(),
      body: Stack(
        children: [
          _bnScreens[_selectedIndex].widget,
           SearchOperator(),
          Obx(() {
            return Visibility(
              visible: _drawerGetX.firstTime == 1,
              child: const DrawerContentScreen(),
            );
          })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        // selectedFontSize: 16,
        selectedLabelStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory_outlined),
              activeIcon: Icon(Icons.store),
              label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              activeIcon: Icon(Icons.account_box),
              label: 'Wishlist'),
        ],
      ),
    );
  }
}
