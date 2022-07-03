// ignore_for_file: non_constant_identifier_names

class JsonOrder {
  String? OrderNo;
  String? OrderQuan;
  String? Receiving;
  String? Photo;
  String? DateTime;
  String? Waiting;

  JsonOrder({
    this.OrderNo,
    this.OrderQuan,
    this.Receiving,
    this.Photo,
    this.DateTime,
    this.Waiting,
  });

  JsonOrder.fromJson(Map<String, dynamic> json) {
    OrderNo = json['OrderNo'];
    OrderQuan = json['OrderQuan'];
    Receiving = json['Receiving'];
    Photo = json['Photo'];
    DateTime = json['DateTime'];
    Waiting = json['Waiting'];
  }
}
