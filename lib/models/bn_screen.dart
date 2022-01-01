import 'package:flutter/material.dart';

class BnScreen {
  final Widget widget;
  late final String title;

  BnScreen({
   required this.widget,title,
  }){
    this.title = title.toUpperCase();
  }
}
