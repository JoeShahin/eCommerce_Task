// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/models/models_export.dart';
import 'package:market_app/widgets/details_items.dart';
import 'package:market_app/widgets/widgets_export.dart';

class OrderDetails extends StatefulWidget {
  static const String routeName = "Order Details";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => OrderDetails());
  }

  const OrderDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar(),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<OldOrder>;
            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return DetailsItems(
                    photos: items[index].Photos.toString(),
                    name: items[index].OrderName.toString(),
                    number: 'Order Number: ${items[index].OrderNom.toString()}',
                    quantity:
                        'Order Quantity: ${items[index].OrderQuant.toString()}',
                    price: 'Price: ${items[index].Price.toString()} L.E.',
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<OldOrder>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json_data/data1.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => OldOrder.fromJson(e)).toList();
  }
}
