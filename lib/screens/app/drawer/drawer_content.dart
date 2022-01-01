import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy/Widgets/expansion_tile_menu.dart';
import 'package:trendy/getx/drawer_getx.dart';

import 'drawer_content_screen.dart';

class DrawerContent extends StatefulWidget {
  Color textColor;
  Color elevatedButtonColor;
  Color borderColor;
  int margin;
  bool isLinearProgress;

  DrawerContent({
    Key? key,
    required this.textColor,
    required this.margin,
    required this.elevatedButtonColor,
    required this.borderColor,
    required this.isLinearProgress,
  }) : super(key: key);

  // const DrawerContent({Key? key}) : super(key: key);

  @override
  _DrawerContentState createState() => _DrawerContentState(
        textColor: textColor,
        margin: margin,
        elevatedButtonColor: elevatedButtonColor,
        borderColor: borderColor,
        isLinearProgress: isLinearProgress,
      );
}

class _DrawerContentState extends State<DrawerContent> {
  late double _womenProgressValue;
  late double _menProgressValue;
  late double _womenMinHeightProgressValue;
  late double _menMinHeightProgressValue;

  Color textColor;
  Color elevatedButtonColor;
  Color borderColor;
  int margin;
  bool isLinearProgress;

  _DrawerContentState({
    required this.textColor,
    required this.margin,
    required this.elevatedButtonColor,
    required this.borderColor,
    required this.isLinearProgress,
  });

  final DrawerGetX _drawerGetX = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _womenProgressValue = _drawerGetX.womenProgressValue;
    _menProgressValue = _drawerGetX.menProgressValue;
    _womenMinHeightProgressValue = _drawerGetX.womenMinHeightProgressValue;
    _menMinHeightProgressValue = _drawerGetX.menMinHeightProgressValue;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(margin.toDouble()),
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(
                //   width: 1,
                //   color: borderColor,
                // ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _womenProgressValue = 1;
                              _menProgressValue = 0;
                              _womenMinHeightProgressValue = 2;
                              _menMinHeightProgressValue = 1;
                              _drawerGetX.changeWomenProgressValue(
                                  _womenProgressValue);
                              _drawerGetX.changeWomenMinHeightProgressValue(
                                  _womenMinHeightProgressValue);
                              _drawerGetX
                                  .changeMenProgressValue(_menProgressValue);
                              _drawerGetX.changeMenMinHeightProgressValue(
                                  _menMinHeightProgressValue);
                              if (_drawerGetX.firstTime == 0) {
                                _drawerGetX.changeFirstTime(1);
                              }
                            });
                          },
                          child: Text(
                            'WOMEN',
                            style: TextStyle(
                              color: _womenProgressValue == 1
                                  ? textColor
                                  : textColor == Colors.white
                                      ? Colors.black
                                      : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: _womenProgressValue == 1
                                ? elevatedButtonColor
                                : Colors.white,
                            minimumSize: Size(double.infinity, 31),
                            elevation: 0,
                            side: BorderSide(width: 1, color: borderColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ),
                        ),
                        Visibility(
                          visible: isLinearProgress,
                          child: LinearProgressIndicator(
                            value: _womenProgressValue,
                            color: Colors.black,
                            backgroundColor: Colors.grey,
                            minHeight: _womenMinHeightProgressValue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _menProgressValue = 1;
                              _womenProgressValue = 0;
                              _menMinHeightProgressValue = 2;
                              _womenMinHeightProgressValue = 1;

                              _drawerGetX.changeWomenProgressValue(
                                  _womenProgressValue);
                              _drawerGetX.changeWomenMinHeightProgressValue(
                                  _womenMinHeightProgressValue);
                              _drawerGetX
                                  .changeMenProgressValue(_menProgressValue);
                              _drawerGetX.changeMenMinHeightProgressValue(
                                  _menMinHeightProgressValue);
                            });
                          },
                          child: Text(
                            'MEN',
                            style: TextStyle(
                              color: _menProgressValue == 1
                                  ? textColor
                                  : textColor == Colors.white
                                      ? Colors.black
                                      : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: _menProgressValue == 1
                                ? elevatedButtonColor
                                : Colors.white,
                            minimumSize: Size(double.infinity, 31),
                            elevation: 0,
                            side: BorderSide(width: 1, color: borderColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ),
                        ),
                        Visibility(
                          visible: isLinearProgress,
                          child: LinearProgressIndicator(
                            value: _menProgressValue,
                            color: Colors.black,
                            backgroundColor: Colors.grey,
                            minHeight: _menMinHeightProgressValue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: isLinearProgress ? 53 : 15),
            const ExpansionTileMenu(
              path: 'images/app/main_screen/icons/menu_icons/ic_newin.png',
              title: 'NEW IN',
            ),
            const SizedBox(height: 25),
            const ExpansionTileMenu(
              path: 'images/app/main_screen/icons/menu_icons/ic_collection.png',
              title: 'COLLECTION',
            ),
            const SizedBox(height: 25),
            const ExpansionTileMenu(
              path: 'images/app/main_screen/icons/menu_icons/ic_clothing.png',
              title: 'CLOTHING',
            ),
            const SizedBox(height: 25),
            const ExpansionTileMenu(
              path:
                  'images/app/main_screen/icons/menu_icons/ic_accessories.png',
              title: 'ACCESSORIES',
            ),
            const SizedBox(height: 25),
            const ExpansionTileMenu(
              path: 'images/app/main_screen/icons/menu_icons/ic_shoes.png',
              title: 'SHOES',
            ),
            const SizedBox(height: 25),
            const ExpansionTileMenu(
              path: 'images/app/main_screen/icons/menu_icons/ic_sale.png',
              title: 'SALE',
            ),
          ],
        ),
      ],
    );
  }
}
