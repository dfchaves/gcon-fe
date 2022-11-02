import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories.dart';
import 'package:gcon_fe/themes/themes.dart';
import 'home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'GCon',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(
              restorationId: "home",
            ),
        '/categories': (context) => const Categories(),
        '/themes': (context) => const Themes(),
        '/help': (context) => const Categories(),
      },
    ),
  );
}
