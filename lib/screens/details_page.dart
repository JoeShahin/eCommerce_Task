// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/models/models_export.dart';
import 'package:market_app/widgets/widgets_export.dart';

class OrderDetails extends StatefulWidget {
  static const String routeName = "Order Details";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => OrderDetails());
  }

  const OrderDetails({Key? key, r}) : super(key: key);

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
                  return Column(
                    children: [
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20,
                          height: MediaQuery.of(context).size.height - 80,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 124, 120),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Order Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Avenir",
                                ),
                              ),
                              CircleAvatar(
                                radius: 100,
                                backgroundImage: AssetImage(
                                  items[index].Photos.toString(),
                                ),
                              ),
                              Text(
                                items[index].OrderName.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5,
                                      offset: Offset(0, 5),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Color.fromARGB(
                                                255, 40, 124, 120),
                                            size: 35,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "About",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 40, 124, 120),
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Order Number: ${items[index].OrderNom.toString()}',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 124, 120),
                                        ),
                                      ),
                                      subtitle: Text(
                                        'Order Quantity: ${items[index].OrderQuant.toString()}',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 124, 120),
                                        ),
                                      ),
                                      leading: Icon(
                                        Icons.fastfood_outlined,
                                        color:
                                            Color.fromARGB(255, 40, 124, 120),
                                        size: 30,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.price_change_outlined,
                                        color:
                                            Color.fromARGB(255, 40, 124, 120),
                                        size: 30,
                                      ),
                                      title: Text(
                                        'Price: ${items[index].Price.toString()} L.E.',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 124, 120),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
