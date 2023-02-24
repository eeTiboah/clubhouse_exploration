import 'package:flutter/material.dart';

Widget screenUser(String imgPath) {
  return Container(
    height: 30.0,
    width: 30.0,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0))
    ),
    child: Image.asset(imgPath),
  );
}
