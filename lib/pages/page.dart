import 'package:flutter/material.dart';
import 'package:gastosappg7/db/db_admin.dart';

class PagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              DBAdmin().obtenerGastos();
            },
            child: Text("asdasdad"),
          ),
        ],
      ),
    );
  }
}
