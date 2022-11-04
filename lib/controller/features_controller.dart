import 'package:gcon_fe/models/features_model.dart';
import '../utils/api_rest.dart';

Future<List<FeaturesModel>> fetchFeatures([params]) async {
  List getFeaturesInfo;
  if (params == null) {
    getFeaturesInfo =
        await fetchInfo("features-get?collection=features", "GET");
  } else {
    getFeaturesInfo = await fetchInfo("features-getWithFilters", "POST", {
      "collection": "features",
      "filterParam": "category",
      "filterOperator": "==",
      "filterValue": params
    });
  }
  var listOfFeatures = <FeaturesModel>[];
  for (final item in getFeaturesInfo) {
    listOfFeatures.add(FeaturesModel.fromJson(item));
  }
  return listOfFeatures;
}

Future<FeaturesModel> fetchUniqueFeature(id) async {
  var getFeaturesInfo = await fetchInfo("features-getFeatureUnique", "POST", {
    "collection": "features",
    "documentId": id,
  });
  return FeaturesModel.fromJson(getFeaturesInfo);
}
