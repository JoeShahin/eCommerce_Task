// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:market_app/models/models_export.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 100),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color.fromARGB(255, 40, 124, 120),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Text(
                      order.OrderNo,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 40, 124, 120),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      order.OrderQuan,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      order.Receiving,
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
                    child: order.Photo),
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
                    order.DateTime,
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
                      order.Waiting,
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
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
    );
  }
}
