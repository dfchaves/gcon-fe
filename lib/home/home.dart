import 'package:flutter/material.dart';

import '../utils/BottonNavigator.dart';
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
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: const HomeAll(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        currentIndex: _currentIndex.value,
        onTap: (index) {
          setState(() {
            if(index==1){
              Navigator.pushNamed(context, "/second");
              _currentIndex.value = index;
            }
          });
        },
        backgroundColor: Colors.black45,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: navigatorList,
      ),
    );
  }
}
