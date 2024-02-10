import 'package:flutter/material.dart';
import 'package:gastosappg7/widgets/item_gasto_widget.dart';
import 'package:gastosappg7/widgets/texfield_normal_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showModalRegister() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Registrar salida",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Divider(),
                TextFieldNormalWidget(),
                TextFieldNormalWidget(),
                TextFieldNormalWidget(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff101321),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Agregar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
                    showModalRegister();
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Color(0xff101321),
                    width: double.infinity,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Agregar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: TextFieldNormalWidget(),
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
