


import 'dart:convert';

import 'package:api_getx/models/title_model.dart';
import 'package:http/http.dart';

class ApiCall{

  Future<List<titleModel>>  fetchTitle() async {
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await get(uri);
    var body = jsonDecode(response.body);
    final list = titleModel.allResponse(body);
    print("the list is $list" );
    return list;
  }
}