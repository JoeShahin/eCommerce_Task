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
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}
