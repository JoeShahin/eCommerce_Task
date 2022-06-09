// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Order extends Equatable {
  final String OrderNo;
  final String OrderQuan;
  final String Receiving;
  final Image Photo;
  final String DateTime;
  final String Waiting;

  const Order({
    required this.OrderQuan,
    required this.Receiving,
    required this.Photo,
    required this.DateTime,
    required this.Waiting,
    required this.OrderNo,
  });
  @override
  List<Object?> get props {
    return [
      OrderNo,
      OrderQuan,
      Receiving,
      Photo,
      DateTime,
      Waiting,
    ];
  }

  static List<Order> orders = [
    Order(
      OrderNo: "رقـم الطلـب ....    ",
      OrderQuan: "كمية الطلب",
      Receiving: "استـلام مـن الفرع",
      Photo: Image.asset(
        "images/1.webp",
        scale: 4,
        fit: BoxFit.fill,
      ),
      DateTime: "12 May. 12:50 AM",
      Waiting: "قيد الانتظار",
    ),
    Order(
      OrderNo: "رقـم الطلـب ....    ",
      OrderQuan: "كمية الطلب",
      Receiving: "استـلام مـن الفرع",
      Photo: Image.asset(
        "images/2.jpg",
        scale: 3,
        fit: BoxFit.fill,
      ),
      DateTime: "31 May. 03:50 PM",
      Waiting: "قيد الانتظار",
    ),
    Order(
      OrderNo: "رقـم الطلـب ....    ",
      OrderQuan: "كمية الطلب",
      Receiving: "استـلام مـن الفرع",
      Photo: Image.asset(
        "images/3.jpg",
        scale: 8,
        fit: BoxFit.fill,
      ),
      DateTime: "1 Jun. 01:17 AM",
      Waiting: "قيد الانتظار",
    ),
    Order(
      OrderNo: "رقـم الطلـب ....    ",
      OrderQuan: "كمية الطلب",
      Receiving: "استـلام مـن الفرع",
      Photo: Image.asset(
        "images/4.webp",
        scale: 12,
        fit: BoxFit.fill,
      ),
      DateTime: "1 Jun. 10:06 PM",
      Waiting: "قيد الانتظار",
    ),
    Order(
      OrderNo: "رقـم الطلـب ....    ",
      OrderQuan: "كمية الطلب",
      Receiving: "استـلام مـن الفرع",
      Photo: Image.asset(
        "images/5.jpg",
        scale: 18,
        fit: BoxFit.fill,
      ),
      DateTime: "28 May. 06:50 PM",
      Waiting: "قيد الانتظار",
    ),
  ];
}
