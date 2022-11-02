import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndexParam,
  });

  final int currentIndexParam;

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int get currentIndexParam => widget.currentIndexParam;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: textTheme.caption!.fontSize!,
      unselectedFontSize: textTheme.caption!.fontSize!,
      currentIndex: currentIndexParam,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/categories");
            break;
          case 2:
            Navigator.pushNamed(context, "/themes");
            break;
          case 3:
            Navigator.pushNamed(context, "/help");
            break;
        }
      },
      backgroundColor: Colors.black45,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      items: navigatorList,
    );
  }
}

const navigatorList = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.category_sharp),
    label: "Categorías",
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.list_alt),
    label: "Temas",
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.help),
    label: "Acerca de",
  ),
];
