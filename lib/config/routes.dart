// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:market_app/models/order_two.dart';
import 'package:market_app/screens/screens_export.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("this is route: ${settings.name}");

    switch (settings.name) {
      case Market.routeName:
        return Market.route();
      case Info.routeName:
        return Info.route();
      case Profile.routeName:
        return Profile.route();
      case OrderTwo.routeName:
        return OrderTwo.route();
      case Settings.routeName:
        return Settings.route();
      case Waiting.routeName:
        return Waiting.route();

      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: "/error"),
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text("Error")),
            ));
  }
}
