// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            color: Color.fromARGB(255, 56, 180, 174),
            onPressed: () {
              Navigator.pushNamed(context,"Home Screen");
            },
            icon: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(30);
}
