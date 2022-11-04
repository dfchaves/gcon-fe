import 'package:flutter/material.dart';
import 'package:gcon_fe/controller/members_controller.dart';
import 'package:gcon_fe/models/members_model.dart';
import '../controller/categories_controller.dart';
import '../models/categories_model.dart';
import '../utils/button_navigator.dart';
import '../utils/scroll_viewAll.dart';
import '../utils/item_list.dart';
import 'members_scrollView.dart';

class Members extends StatefulWidget {
  const Members({
    super.key,
  });

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  late Future<List<MembersModel>> futureMembers;
  var itemList = <MembersModel>[];

  @override
  void initState() {
    super.initState();
    futureMembers = fetchMembers();
    itemList = <MembersModel>[];
  }

  @override
  void dispose() {
    super.dispose();
    futureMembers = [] as Future<List<MembersModel>>;
    itemList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Acerca de'),
          backgroundColor: Colors.black45,
          automaticallyImplyLeading: false,
        ),
        body: FutureBuilder<List<MembersModel>>(
          future: futureMembers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var items = snapshot.data;
              for (final i in items!) {
                itemList.add(MembersModel(
                    id: i.id,
                    name: i.name,
                    lastName: i.lastName,
                    phoneNumber: i.phoneNumber,
                    photo: i.photo,
                    profession: i.profession));
              }
              return ScrollViewMembers(
                restorationId: '',
                currentList: itemList,
              );
            }
            // By default, show a loading spinner.
            return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black45,
                ));
          },
        ),
        bottomNavigationBar: const BottomNavBar(
          currentIndexParam: 3,
        ));
  }
}
