import 'package:gcon_fe/models/features_model.dart';
import 'package:http/http.dart';
import '../utils/api_rest.dart';

Future<List<FeaturesModel>> fetchFeatures([params]) async {
  List getFeaturesInfo;
  if (params == null) {
    getFeaturesInfo =
        await fetchInfo("features-get?collection=features", "GET");
  } else {
    getFeaturesInfo =
        await fetchInfo("features-getWithFilters", "POST", params);
  }
  var listOfFeatures = <FeaturesModel>[];
  for (final item in getFeaturesInfo) {
    listOfFeatures.add(FeaturesModel.fromJson(item));
  }
  return listOfFeatures;
}
