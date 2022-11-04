import 'package:gcon_fe/models/members_model.dart';
import '../utils/api_rest.dart';

Future<List<MembersModel>> fetchMembers() async {
  var getMembersInfo =
  await fetchInfo("members-get?collection=members", "GET");
  var listOfMembers = <MembersModel>[];

  for (final item in getMembersInfo) {
    listOfMembers.add(MembersModel.fromJson(item));
  }
  return listOfMembers;
}
