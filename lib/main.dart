import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories.dart';
import 'package:gcon_fe/items/item_view.dart';
import 'package:gcon_fe/themes/themes.dart';
import 'package:gcon_fe/utils/video_player.dart';
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
        '/itemView': (context) => const ItemView(),
      },
    ),
  );
}
