class GastoModel {
  int? id;
  String title;
  double price;
  String type;
  String dateTime;

  GastoModel({
    this.id,
    required this.title,
    required this.dateTime,
    required this.price,
    required this.type,
  });

  Map<String, dynamic> convertirAMap() => {
        "title": title,
        "price": price,
        "dateTime": dateTime,
        "type": type,
      };
}
