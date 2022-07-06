// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member

class NewOrder {
  String? OrderNo;
  String? OrderQuan;
  String? Receiving;
  String? Photo;
  String? DateTime;
  String? Waiting;

  NewOrder({
    this.OrderNo,
    this.OrderQuan,
    this.Receiving,
    this.Photo,
    this.DateTime,
    this.Waiting,
  });

  NewOrder.fromJson(Map<String, dynamic> data) {
    OrderNo = data['OrderNo'];
    OrderQuan = data['OrderQuan'];
    Receiving = data['Receiving'];
    Photo = data['Photo'];
    DateTime = data['DateTime'];
    Waiting = data['Waiting'];
  }

}
