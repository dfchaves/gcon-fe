import 'package:flutter/material.dart';
import 'themes/themes.dart';
import 'categories/categories.dart';
import 'features/features_view.dart';
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
        '/itemView': (context) => const FeaturesView(),
      },
    ),
  );
}
