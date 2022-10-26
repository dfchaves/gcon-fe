import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories.dart';
import 'home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'GCon',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(
              restorationId: "bottom_navigation_tab_index",
            ),
        '/second': (context) => const Categories(
              restorationId: "bottom_navigation_tab_index",
            ),
      },
    ),
  );
}
