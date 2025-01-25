import 'package:flutter/material.dart';

AppBar appBarHome() {
  return AppBar(
    toolbarHeight: 60,
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 239, 95, 95),
    title: const Text(
      " Electronics products",
      style: TextStyle(
        color: Colors.black,
        fontSize: 27,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
