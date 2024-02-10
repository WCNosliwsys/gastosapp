import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  Map<String, dynamic> type;
  bool isSelected;

  ItemTypeWidget({
    required this.type,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xff101321).withOpacity(0.05),
        borderRadius: BorderRadius.circular(14.0),
        border: isSelected
            ? Border.all(width: 1.0, color: Color(0xff101321))
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            type["image"],
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 5,
          ),
          Text(type["name"])
        ],
      ),
    );
  }
}
