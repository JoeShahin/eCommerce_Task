// ignore_for_file: non_constant_identifier_names


class OldOrder {
  String? OrderNom;
  String? OrderQuant;
  String? Receivings;
  String? Photos;
  String? DateTimes;
  String? Waitings;
  String? OrderName;
  String? Price;

  OldOrder({
    this.OrderNom,
    this.OrderQuant,
    this.Receivings,
    this.Photos,
    this.DateTimes,
    this.Waitings,
    this.OrderName,
    this.Price,
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
