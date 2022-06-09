// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BottomAppBar(
        color: Color.fromARGB(255, 40, 124, 120),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Settings");
                  },
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Info");
                  },
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Profile");
                  },
                  icon: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Home Screen");
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
