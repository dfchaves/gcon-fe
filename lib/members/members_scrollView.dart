import 'package:flutter/material.dart';
import 'package:gcon_fe/members/members_view.dart';
import 'package:gcon_fe/models/members_model.dart';
import 'package:gcon_fe/utils/scroll_view_item.dart';
import '../utils/item_list.dart';

class ScrollViewMembers extends StatefulWidget {
  const ScrollViewMembers({
    super.key,
    required this.restorationId,
    required this.currentList,
  });

  final String restorationId;
  final List<MembersModel> currentList;

  @override
  State<ScrollViewMembers> createState() => _ScrollViewItems();
}

class _ScrollViewItems extends State<ScrollViewMembers> with RestorationMixin {
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
            MembersView(
              photo: item.photo,
              name: item.name,
              lastName: item.lastName,
              profession: item.profession,
              phoneNumber: item.phoneNumber,
            ),
        ],
      ),
    );
  }
}
