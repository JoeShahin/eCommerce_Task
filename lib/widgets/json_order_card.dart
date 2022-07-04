// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_null_comparison, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/models/json_order_model.dart';
import 'package:market_app/widgets/widgets_export.dart';

class JsonOrderCard extends StatefulWidget {
  JsonOrderCard({Key? key}) : super(key: key);

  @override
  State<JsonOrderCard> createState() => _JsonOrderCardState();
}

class _JsonOrderCardState extends State<JsonOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<JsonOrder>;
            return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(8),
                    child: Card(
                        child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 20,
                                height: 10,
                                padding: EdgeInsets.only(right: 100),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Color.fromARGB(255, 40, 124, 120),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 200,
                                padding: EdgeInsets.only(right: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      items[index].OrderNo.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 40, 124, 120),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      items[index].OrderQuan.toString(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      items[index].Receiving.toString(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(
                                      items[index].Photo.toString(),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            textDirection: TextDirection.rtl,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    items[index].DateTime.toString(),
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
                                      items[index].Waiting.toString(),
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
                    )),
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

  Future<List<JsonOrder>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('json_data/data.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => JsonOrder.fromJson(e)).toList();
  }
}
