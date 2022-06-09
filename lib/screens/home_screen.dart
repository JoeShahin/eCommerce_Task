// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:market_app/models/models_export.dart';
import '../widgets/widgets_export.dart';

class Market extends StatefulWidget {
  static const String routeName = "Home Screen";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => Market());
  }

  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        bottomNavigationBar: CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
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
                          Navigator.of(context).pushNamed("Home Screen");
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
                          Navigator.of(context).pushNamed("Order Two");
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
              OrderCard(order: Order.orders.first),
              Divider(
                thickness: 1,
              ),
              OrderCard(order: Order.orders.elementAt(1)),
              Divider(
                thickness: 1,
              ),
              OrderCard(order: Order.orders.elementAt(2)),
              Divider(
                thickness: 1,
              ),
              OrderCard(order: Order.orders.elementAt(3)),
              Divider(
                thickness: 1,
              ),
              OrderCard(order: Order.orders.last),
            ],
          ),
        ));
  }
}
