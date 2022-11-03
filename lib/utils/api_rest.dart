import 'dart:convert';

import 'package:http/http.dart' as http;

const url = 'https://us-central1-gcon-aa489.cloudfunctions.net/';

Future<List<dynamic>> fetchInfo(endPointName, method) async {
  http.Response finalResponse;
  if (method == 'GET') {
    finalResponse = await http.get(Uri.parse('$url$endPointName'));
  } else {
    finalResponse = await http.post(Uri.parse('$url$endPointName'));
  }
  if (finalResponse.statusCode == 200) {
    return jsonDecode(finalResponse.body);
  } else {
    throw Exception('Failed to load info');
  }
}
