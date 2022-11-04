import '../models/categories_model.dart';
import '../utils/api_rest.dart';

Future<List<CategoriesModel>> fetchCategories() async {
  var getCategoriesInfo =
      await fetchInfo("categories-get?collection=categories", "GET");
  var listOfCategories = <CategoriesModel>[];

  for (final item in getCategoriesInfo) {
    listOfCategories.add(CategoriesModel.fromJson(item));
  }
  return listOfCategories;
}
