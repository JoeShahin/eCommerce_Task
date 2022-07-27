// ignore_for_file: non_constant_identifier_names

class OldOrder {
  late String OrderNom;
  late String OrderQuant;
  String? Receivings;
  late String Photos;
  String? DateTimes;
  String? Waitings;
  late String OrderName;
  late String Price;

  OldOrder({
    required this.OrderNom,
    required this.OrderQuant,
    this.Receivings,
    required this.Photos,
    this.DateTimes,
    this.Waitings,
    required this.OrderName,
    required this.Price,
  });

  OldOrder.fromJson(Map<String, dynamic> json) {
    OrderNom = json['OrderNom'];
    OrderQuant = json['OrderQuant'];
    Receivings = json['Receivings'];
    Photos = json['Photos'];
    DateTimes = json['DateTimes'];
    Waitings = json['Waitings'];
    OrderName = json['OrderName'];
    Price = json['Price'];
  }
}
