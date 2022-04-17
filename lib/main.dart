import 'package:flutter/material.dart';
import 'pages/add.dart';
import 'pages/homepage.dart';
import 'pages/update.dart';
import 'pages/view.dart';
import 'pages/about.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
      // '/add': (context) => const Add(),
      '/update': (context) => const Update(),
      '/view': (context) => View(),
      '/about': (context) => const About(),
    },
  ));
}
