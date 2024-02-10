import 'package:flutter/material.dart';

class TextFieldNormalWidget extends StatelessWidget {
  String hintText;
  bool isNumber = false;
  bool isDatePicker = false;
  VoidCallback? onTap;
  TextEditingController controller;

  TextFieldNormalWidget({
    required this.hintText,
    this.isNumber = false,
    this.isDatePicker = false,
    this.onTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextField(
        controller: controller,
        // enabled: true,
        readOnly: isDatePicker,
        onTap: onTap,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(0.40),
          ),
          filled: true,
          fillColor: Color(0xff101321).withOpacity(0.05),
          contentPadding: EdgeInsets.all(12),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
