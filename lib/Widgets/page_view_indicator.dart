import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  final bool selected;
  final double marginEnd;
  final Color color;

  const PageViewIndicator({
    Key? key,
    required this.selected,
    this.marginEnd = 0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      margin: EdgeInsets.only(right: marginEnd),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: selected ? color : Colors.grey,
      ),
    );
  }
}
