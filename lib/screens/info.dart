// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/widgets_export.dart';


class Info extends StatelessWidget {
   static const String routeName = "Info";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => Info());
  }
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 243, 145, 33),
      ),
    );
  }
}