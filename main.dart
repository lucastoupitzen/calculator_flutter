import 'package:flutter/material.dart';

import 'package:bytebank/home_page/home_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Container(color: Colors.black, child: MyApp())),
  ));
}
