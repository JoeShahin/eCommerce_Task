// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_call_super, unused_element, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
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
  late TabController _myController;
  @override
  void initState() {
    super.initState();
    _myController = TabController(length: 2, vsync: this, initialIndex: 0);
    _myController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              color: Color.fromARGB(255, 40, 124, 120),
              onPressed: () {
                Navigator.pushNamed(context, "Home Screen");
              },
              icon: Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
        ],
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: TabBar(
          labelPadding: EdgeInsets.symmetric(horizontal: 50),
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color.fromARGB(255, 40, 124, 120),
              ),
              right: BorderSide(
                color: Color.fromARGB(255, 40, 124, 120),
              ),
            ),
          ),
          labelColor: Color.fromARGB(255, 40, 124, 120),
          controller: _myController,
          onTap: (int index) {},
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: "Avenir",
          ),
          tabs: [
            Tab(
              text: "سـابقـة",
            ),
            Tab(
              text: "جـديـدة",
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: TabBarView(
        controller: _myController,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  thickness: 2,
                ),
                OldOrderCard(),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  thickness: 2,
                ),
                NewOrderCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
