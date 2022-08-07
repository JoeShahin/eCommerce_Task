// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member

class NewOrder {
  late String OrderNo;
  late String OrderQuan;
  String? Receiving;
  late String Photo;
  String? DateTime;
  String? Waiting;
  late String Price;
  late String OrderName;

  NewOrder({
    required this.OrderNo,
    required this.OrderQuan,
    this.Receiving,
    required this.Photo,
    this.DateTime,
    this.Waiting,
    required this.OrderName,
    required this.Price,
  });

  NewOrder.fromJson(Map<String, dynamic> data) {
    OrderNo = data['OrderNo'];
    OrderQuan = data['OrderQuan'];
    Receiving = data['Receiving'];
    Photo = data['Photo'];
    DateTime = data['DateTime'];
    Waiting = data['Waiting'];
    Price = data['Price'];
    OrderName = data['OrderName'];
  }
}
