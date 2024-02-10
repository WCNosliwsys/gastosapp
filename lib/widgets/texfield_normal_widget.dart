import 'package:flutter/material.dart';

class TextFieldNormalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Buscar por título",
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
    );
  }
}
