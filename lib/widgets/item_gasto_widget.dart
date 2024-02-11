import 'package:flutter/material.dart';
import 'package:gastosappg7/models/gasto_model.dart';

class ItemGastoWidget extends StatelessWidget {
  GastoModel data;
  ItemGastoWidget({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xff101321).withOpacity(0.10),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/icons/alimentos.png",
          width: 50,
          height: 50,
        ),
        title: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Text(
            data.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        subtitle: Text(
          data.dateTime,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Text(
          "S/ ${data.price}",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
