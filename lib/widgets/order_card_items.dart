// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class OrderCardItems extends StatelessWidget {
  final String OrderNom;
  final String OrderQuan;
  final String Receiving;
  final String photo;
  final String DateTime;
  final String Waiting;
  const OrderCardItems({
    Key? key,
    required this.OrderNom,
    required this.OrderQuan,
    required this.Receiving,
    required this.DateTime,
    required this.Waiting,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 100),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Order Details");
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
                        OrderNom,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 124, 120),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        OrderQuan,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        Receiving,
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
                        photo,
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
                      DateTime,
                      style: TextStyle(color: Color.fromARGB(255, 74, 74, 75)),
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
                      onTap: () => Navigator.of(context).pushNamed("Waiting"),
                      child: Text(
                        Waiting,
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
  }
}
