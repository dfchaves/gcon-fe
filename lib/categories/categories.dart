import 'package:flutter/material.dart';
import '../controller/categories_controller.dart';
import '../models/categories_model.dart';
import '../utils/button_navigator.dart';
import '../utils/scroll_viewAll.dart';
import '../utils/item_list.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late Future<List<CategoriesModel>> futureCategories;
  var itemList = <ItemsList>[];

  @override
  void initState() {
    super.initState();
    futureCategories = fetchCategories();
    itemList = <ItemsList>[];
  }
  @override
  void dispose() {
    super.dispose();
    futureCategories = [] as Future<List<CategoriesModel>>;
    itemList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categorias'),
          backgroundColor: Colors.black45,
          automaticallyImplyLeading: false,
        ),
        body: FutureBuilder<List<CategoriesModel>>(
          future: futureCategories,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var items = snapshot.data;
              for (final i in items!) {
                itemList.add(ItemsList(
                    name: i.title, subtitle: i.description, imageUrl: i.image));
              }
              return ScrollViewItems(restorationId: '', currentList: itemList);
            }
            // By default, show a loading spinner.
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.black45,
            ));
          },
        ),
        bottomNavigationBar: const BottomNavBar(
          currentIndexParam: 1,
        ));
  }
}
