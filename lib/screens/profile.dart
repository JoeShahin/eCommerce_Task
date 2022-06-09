// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market_app/widgets/custom_nav_bar.dart';
import 'package:market_app/widgets/widgets_export.dart';


class Profile extends StatelessWidget {
   static const String routeName = "Profile";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => Profile());
  }
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}