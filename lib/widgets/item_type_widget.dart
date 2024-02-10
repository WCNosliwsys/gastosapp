import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  String title;
  String assetPath;

  ItemTypeWidget({
    required this.title,
    required this.assetPath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xff101321).withOpacity(0.05),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetPath,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
