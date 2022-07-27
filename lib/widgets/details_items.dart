// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:market_app/models/models_export.dart';

class DetailsItems extends StatelessWidget {
  final OldOrder? oldOrder;
  final String photos;
  final String name;
  final String number;
  final String quantity;
  final String price;
  const DetailsItems({
    Key? key,
    required this.photos,
    required this.name,
    required this.number,
    required this.quantity,
    required this.price,
    this.oldOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    photos,
                  ),
                ),
                Text(
                  name,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.info_outline,
                              color: Color.fromARGB(255, 40, 124, 120),
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "About",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 124, 120),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          number,
                          style: TextStyle(
                            color: Color.fromARGB(255, 40, 124, 120),
                          ),
                        ),
                        subtitle: Text(
                          quantity,
                          style: TextStyle(
                            color: Color.fromARGB(255, 40, 124, 120),
                          ),
                        ),
                        leading: Icon(
                          Icons.fastfood_outlined,
                          color: Color.fromARGB(255, 40, 124, 120),
                          size: 30,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.price_change_outlined,
                          color: Color.fromARGB(255, 40, 124, 120),
                          size: 30,
                        ),
                        title: Text(
                          price,
                          style: TextStyle(
                            color: Color.fromARGB(255, 40, 124, 120),
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
  }
}
