import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  print("presionado");
                },
                child: Container(
                  color: Color(0xff101321),
                  width: double.infinity,
                  height: 120,
                ),
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
            ],
          )
        ],
      ),
    );
  }
}
