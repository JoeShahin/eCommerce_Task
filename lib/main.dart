// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/config/config_export.dart';
import 'screens/screens_export.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.white,
    systemNavigationBarColor: Colors.black,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MAREKT APP",
      debugShowCheckedModeBanner: false,
      home: Market(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Market.routeName,
    );
  }
}
