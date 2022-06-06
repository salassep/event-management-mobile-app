import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget OurAppBar(String title) {
  return AppBar(
    centerTitle: true,
    iconTheme: IconThemeData(color: Color.fromARGB(255, 46, 45, 45)),
    title: const Text.rich(
            TextSpan(
              text: "EVENT",
              style: const TextStyle(
                color: Color.fromARGB(255, 46, 45, 45),
                fontSize: 18,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w400
              ),
            children: [
              TextSpan(
              text: "APP",
              style: const TextStyle(
                color: Color.fromARGB(255, 46, 45, 45),
                fontSize: 18,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700
                
              ),
              ),
            ],
            ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Icon(
          Icons.notifications_none,
          color: Color.fromARGB(255, 46, 45, 45),
        ),
      )
    ],
    backgroundColor: Colors.white,
    elevation: 0,
  );
}