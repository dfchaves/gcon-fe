import 'package:flutter/material.dart';

import '../utils/button_navigator.dart';
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
    return  Scaffold(
      appBar: AppBar(
        title: const Text('GCon'),
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: false,
      ),
      body: const HomeAll(),
      bottomNavigationBar: const BottomNavBar(
        currentIndexParam: 0,
      ),
    );
  }
}
