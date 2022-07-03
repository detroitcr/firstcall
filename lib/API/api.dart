import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice/MODELS/api_models.dart';

class APIService {
//function Name,

  Future<ApiPracticeModel> callAPI() async {
    String url = 'https://reqres.in/api/unknown';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final decodedData = jsonDecode(response.body);

    ApiPracticeModel apiPracticeModel = ApiPracticeModel.fromJson(decodedData);
    return apiPracticeModel;
  }
}
