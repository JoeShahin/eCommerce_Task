// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_null_comparison, prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/widgets/order_card_items.dart';
import 'package:market_app/widgets/widgets_export.dart';

import '../models/models_export.dart';

class OldOrderCard extends StatefulWidget {
  OldOrderCard({Key? key}) : super(key: key);

  @override
  State<OldOrderCard> createState() => _OldOrderCardState();
}

class _OldOrderCardState extends State<OldOrderCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        bottomNavigationBar: CustomNavBar(),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<OldOrder>;
              return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return OrderCardItems(
                    OrderNom:
                        "Order Number: ${items[index].OrderNom.toString()}",
                    OrderQuan:
                        'Order Quantity: ${items[index].OrderQuant.toString()}',
                    Receiving: items[index].Receivings.toString(),
                    photo: items[index].Photos.toString(),
                    DateTime: items[index].DateTimes.toString(),
                    Waiting: items[index].Waitings.toString(),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<OldOrder>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json_data/data1.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => OldOrder.fromJson(e)).toList();
  }
}
