import 'package:aprenda_ingles/screens/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: const Color(0xff795548),
        scaffoldBackgroundColor: const Color(0xfff5e9b9),
        primarySwatch: Colors.brown),
    home: const Home(),
  ));
}
