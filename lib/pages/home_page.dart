import 'package:flutter/material.dart';
import 'package:gastosappg7/widgets/item_gasto_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Resumen de gastos",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Gestiona tus gastos de la mejor forma",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black45),
                            ),
                            TextField(
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
                            ),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                            ItemGastoWidget(),
                          ],
                        ),
                      ),
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
      ),
    );
  }
}
