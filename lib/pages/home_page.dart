import 'package:flutter/material.dart';
import 'package:gastosappg7/db/db_admin.dart';
import 'package:gastosappg7/modals/register_form_modal.dart';
import 'package:gastosappg7/models/gasto_model.dart';
import 'package:gastosappg7/utils/data_general.dart';
import 'package:gastosappg7/widgets/item_gasto_widget.dart';
import 'package:gastosappg7/widgets/item_type_widget.dart';
import 'package:gastosappg7/widgets/texfield_normal_widget.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  List<GastoModel> gastosList = [];

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
          child: RegisterModal(),
        );
      },
    ).then((value) {
      print("-----------------------------");
      // print("HOLA");
      getDataGeneral();
      setState(() {});
    });
  }
List<GastoModel> _todosLosGastos = [];

  Future<void> getDataGeneral() async {
    _todosLosGastos = await DBAdmin().obtenerGastos();
  gastosList = List.from(_todosLosGastos); 
  setState(() {});
  }

  @override
  void initState() {
    getDataGeneral();
    // TODO: implement initState
    super.initState();
  }

void filtrarGastos(String searchText) {
  if (searchText.isNotEmpty) {
    gastosList = _todosLosGastos.where((gasto) {
      return gasto.title.toLowerCase().contains(searchText.toLowerCase());
    }).toList();
  } else {
    gastosList = List.from(_todosLosGastos); 
  }

  setState(() {}); 
}

  @override
  Widget build(BuildContext context) {
    // print(gastosList);
    // final DateTime now = DateTime.now();
    // print(now);
    // final DateFormat formatter = DateFormat('dd-MM-yyyy');
    // final String formatted = formatter.format(now);
    // print(formatted);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // DBAdmin().obtenerGastos();
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
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
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
                              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Gestiona tus gastos de la mejor forma",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black45),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: TextFieldNormalWidget(
                                hintText: "Buscar por título",
                                controller: _searchController,
                                onTextChanged: (text) {
                                  filtrarGastos(text); 
                                },
                              ),
                            ),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: gastosList.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (_searchController.text.isNotEmpty &&
                                    !gastosList[index].title.toLowerCase().contains(
                                          _searchController.text.toLowerCase(),
                                        )) {
                                  return Container();
                                }
                                return GestureDetector(
                                  onTap: () {
                                    DBAdmin().delGasto(gastosList[index].id);
                                    // DBAdmin().updGasto(gastosList[index].id);
                                    getDataGeneral();
                                    setState(() {});
                                  },
                                  child: ItemGastoWidget(
                                    data: gastosList[index],
                                  ),
                                );
                              },
                            ),
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
