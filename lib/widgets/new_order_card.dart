// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_null_comparison, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/widgets/order_card_items.dart';
import 'package:market_app/widgets/widgets_export.dart';

import '../models/new_order_model.dart';

class NewOrderCard extends StatefulWidget {
  NewOrderCard({Key? key}) : super(key: key);

  @override
  State<NewOrderCard> createState() => _NewOrderCardState();
}

class _NewOrderCardState extends State<NewOrderCard> {
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
              var items = data.data as List<NewOrder>;
              return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return OrderCardItems(
                    OrderNom: items[index].OrderNo.toString(),
                    OrderQuan: items[index].OrderQuan.toString(),
                    Receiving: items[index].Receiving.toString(),
                    DateTime: items[index].DateTime.toString(),
                    Waiting: items[index].Waiting.toString(),
                    photo: items[index].Photo.toString(),
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

  Future<List<NewOrder>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json_data/data.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => NewOrder.fromJson(e)).toList();
  }
}
