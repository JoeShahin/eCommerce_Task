// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

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
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Product Details",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 40, 124, 120),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                photos,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildListTile(
                  title: name,
                  icon: Icons.title_outlined,
                ),
                _buildListTile(
                  title: price,
                  icon: Icons.price_check_outlined,
                ),
                _buildListTile(
                  title: number,
                  icon: Icons.format_list_numbered_outlined,
                ),
                _buildListTile(
                  title: quantity,
                  icon: Icons.production_quantity_limits_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 40, 124, 120),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile({required String title, required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Color.fromARGB(255, 40, 124, 120),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 40, 124, 120),
        ),
      ),
    );
  }
}
