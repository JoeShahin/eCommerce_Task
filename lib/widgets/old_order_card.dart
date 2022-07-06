// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_null_comparison, prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 100),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, "Order Details");
                                  },
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Color.fromARGB(255, 40, 124, 120),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      "Order Number: ${items[index].OrderNom.toString()}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 40, 124, 120),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Order Quantity: ${
                                      items[index].OrderQuant.toString()}',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      items[index].Receivings.toString(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(
                                      items[index].Photos.toString(),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            textDirection: TextDirection.rtl,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    items[index].DateTimes.toString(),
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 74, 74, 75)),
                                  ),
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Color.fromARGB(255, 40, 124, 120),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    splashColor: Colors.blue,
                                    onTap: () => Navigator.of(context)
                                        .pushNamed("Waiting"),
                                    child: Text(
                                      items[index].Waitings.toString(),
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                  Icon(
                                    Icons.description_outlined,
                                    color: Color.fromARGB(255, 40, 124, 120),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
