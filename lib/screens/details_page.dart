// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/models/models_export.dart';
import 'package:market_app/widgets/details_items.dart';
import 'package:market_app/widgets/widgets_export.dart';

class OrderDetails extends StatefulWidget {
  final String OrderNom;
  final String OrderQuan;
  final String Receiving;
  final String photo;
  final String DateTime;
  final String Waiting;
  final String price;
  final String OrderName;
  const OrderDetails({
    Key? key,
    required this.OrderNom,
    required this.OrderQuan,
    required this.Receiving,
    required this.DateTime,
    required this.Waiting,
    required this.photo,
    required this.price,
    required this.OrderName,
  }) : super(key: key);
  static const String routeName = "Order Details";

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomNavBar(),
        body: DetailsItems(
          photos: widget.photo.toString(),
          name: widget.OrderName.toString(),
          number: 'Order Number: ${widget.OrderNom.toString()}',
          quantity: 'Order Quantity: ${widget.OrderQuan.toString()}',
          price: 'Price: ${widget.price} L.E.',
        ));
  }

  Future<List<OldOrder>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json_data/data1.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => OldOrder.fromJson(e)).toList();
  }
}
