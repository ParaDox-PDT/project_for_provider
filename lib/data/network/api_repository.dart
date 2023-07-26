import 'package:flutter_defualt_project/data/models/user/user_model.dart';
import 'package:flutter_defualt_project/data/network/api_provider.dart';

import '../models/universal_response.dart';

class ApiRepository{
  final ApiProvider apiProvider;
  ApiRepository({required this.apiProvider});

  Future<List<UserModel>> fetchDefaultModelData()async{
    UniversalResponse universalResponse=await apiProvider.getAllUser();
    if(universalResponse.error.isEmpty){
      return universalResponse.data as  List<UserModel>;
    }
    return [];
  }
}