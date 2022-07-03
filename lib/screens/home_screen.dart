// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_call_super, unused_element, prefer_const_literals_to_create_immutables

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

class _MarketState extends State<Market> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController myController =
        TabController(length: 3, vsync: this, initialIndex: 1);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntrinsicHeight(
              child: TabBar(
                controller: myController,
                labelColor: Color.fromARGB(255, 40, 124, 120),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Avenir",
                ),
                indicatorColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 50),
                tabs: [
                  Tab(
                    text: "سـابقـة",
                  ),
                  VerticalDivider(
                    endIndent: 1,
                    color: Color.fromARGB(255, 40, 124, 120),
                    indent: 1,
                    width: 2,
                    thickness: 2,
                  ),
                  Tab(
                    text: "جـديـدة",
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            JsonOrderCard(),
          ],
        ),
      ),
    );
  }
}
