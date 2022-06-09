// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:market_app/widgets/widgets_export.dart';

class Waiting extends StatefulWidget {
  static const String routeName = "Waiting";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => Waiting());
  }

  const Waiting({Key? key}) : super(key: key);

  @override
  State<Waiting> createState() => _WaitingState();
}

class _WaitingState extends State<Waiting> {
  int timeLeft = 10;
  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 40, 124, 120),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(
              child: Text(
                timeLeft == 0 ? "Your Order Is Ready" : timeLeft.toString(),
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 40, 124, 120)),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.elliptical(50, 10)),
            child: MaterialButton(
              color: Color.fromARGB(255, 40, 124, 120),
              elevation: 10,
              textColor: Colors.white,
              onPressed: _startCountDown,
              child: Text(
                "START",
                style: TextStyle(letterSpacing: 3, fontSize: 25),
              ),
            ),
          )
        ],
      )),
    );
  }
}
