import 'package:flutter/material.dart';

class SearchOperator extends StatelessWidget {
  const SearchOperator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      width: 375,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,

      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          hintText: 'Search for products',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
