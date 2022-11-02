import 'package:flutter/material.dart';

import '../utils/buttonNavigator.dart';
import 'home_all.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.restorationId,
  });

  final String restorationId;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeAll(),
      bottomNavigationBar: BottomNavBar(
        currentIndexParam: 0,
      ),
    );
  }
}
