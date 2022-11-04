import 'package:flutter/material.dart';

import '../controller/features_controller.dart';
import '../models/features_model.dart';
import '../utils/scroll_viewAll.dart';
import '../utils/button_navigator.dart';
import '../utils/item_list.dart';

class Themes extends StatefulWidget {

  Themes({
    super.key,
    this.id,
  });
  var id;

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  late Future<List<FeaturesModel>> futureFeatures;
  var itemList = <ItemsList>[];

  @override
  void initState() {
    super.initState();
    futureFeatures = fetchFeatures(widget.id);
    itemList = <ItemsList>[];
  }

  @override
  void dispose() {
    futureFeatures = [] as Future<List<FeaturesModel>>;
    itemList.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Temas'),
          backgroundColor: Colors.black45,
          automaticallyImplyLeading: false,
        ),
        body: FutureBuilder<List<FeaturesModel>>(
          future: futureFeatures,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var items = snapshot.data;
              for (final i in items!) {
                itemList.add(ItemsList(
                    id: i.id,
                    name: i.title,
                    subtitle: i.description,
                    imageUrl: i.image));
              }
              return ScrollViewItems(
                restorationId: '',
                currentList: itemList,
                transitionCategories: false,
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
          currentIndexParam: 2,
        ));
  }
}
