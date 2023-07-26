import 'dart:convert';
import 'dart:io';


import 'package:flutter_defualt_project/data/models/user/user_model.dart';
import 'package:http/http.dart' as http;

import '../models/universal_response.dart';

class ApiProvider {
  Future<UniversalResponse> getAllUser() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums");
    try {
      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        return UniversalResponse(
            data: (jsonDecode(response.body) as List?)?.map((e) =>
                UserModel.fromJson(e)).toList() ?? []);
      }
      return UniversalResponse(error: "ERROR");
    } on SocketException {
      return UniversalResponse(error: "Internet Error!");
    } on FormatException {
      return UniversalResponse(error: "Format Error!");
    } catch (error){
      return UniversalResponse(error: error.toString());
    }
  }
}