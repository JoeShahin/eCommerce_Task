// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market_app/widgets/widgets_export.dart';

class OrderTwo extends StatelessWidget {
  static const String routeName = "Order Two";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => OrderTwo());
  }

  const OrderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"Home Screen");
                    },
                    child: Text(
                      "سـابقـة",
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 180, 174),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Avenir",
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Color.fromARGB(255, 56, 180, 174),
                    endIndent: 1,
                    indent: 1,
                    thickness: 2,
                    width: 2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"Order Two");
                    },
                    child: Text(
                      "جـديـدة",
                      style: TextStyle(
                        color: Color.fromARGB(255, 56, 180, 174),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Avenir",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
