import 'package:flutter/material.dart';
import 'package:gcon_fe/utils/scroll_view_item.dart';

import 'item_list.dart';

class ScrollViewItems extends StatefulWidget {
  const ScrollViewItems({
    super.key,
    required this.restorationId,
    required this.currentList,
  });

  final String restorationId;
  final List<ItemsList> currentList;

  @override
  State<ScrollViewItems> createState() => _ScrollViewItems();
}

class _ScrollViewItems extends State<ScrollViewItems> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;
  List get currentList => widget.currentList;


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
    return SingleChildScrollView(
          child: Column(
            children: [
              for (final item in currentList)
                ScrollViewItem(
                  imageUrl: item.imageUrl,
                  name: item.name,
                  subtitle: item.subtitle,
                ),
            ],
          ),
        );
  }
}
