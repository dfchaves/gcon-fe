import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories.dart';
import 'home/home.dart';

void main() {

  runApp(
    MaterialApp(
      title: 'GCon',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/second': (context) => const Categories(),
      },
    ),
  );
}
