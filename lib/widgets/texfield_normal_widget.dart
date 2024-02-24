import 'package:flutter/material.dart';

class TextFieldNormalWidget extends StatefulWidget {
  String hintText;
  bool isNumber = false;
  bool isDatePicker = false;
  VoidCallback? onTap;
  TextEditingController controller;
  final Function(String)? onTextChanged;

  TextFieldNormalWidget({
    required this.hintText,
    this.isNumber = false,
    this.isDatePicker = false,
    this.onTap,
    required this.controller,
    this.onTextChanged,
  });

  @override
  State<TextFieldNormalWidget> createState() => _TextFieldNormalWidgetState();
}

class _TextFieldNormalWidgetState extends State<TextFieldNormalWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextField(
        controller: widget.controller,
        // enabled: true,
        readOnly: widget.isDatePicker,
        onTap: widget.onTap,
        keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
        onChanged: (text) {
          if (widget.onTextChanged != null) {
            widget.onTextChanged!(text);
          }
          setState(() {});
          print(text);
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
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
