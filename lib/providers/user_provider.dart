import 'package:flutter/foundation.dart';
import 'package:flutter_defualt_project/data/models/user/user_model.dart';
import 'package:flutter_defualt_project/data/network/api_repository.dart';

import '../data/models/status/form_status.dart';

class UserProvider with ChangeNotifier {
  final ApiRepository apiRepository;

  UserProvider({required this.apiRepository}){
    fetchUserInfo();
  }

  String errorText="";

  FormStatus status = FormStatus.pure;
  List<UserModel> users=[];

  fetchUserInfo()async{
    notify(FormStatus.loading);
    users = await apiRepository.fetchDefaultModelData();
    notify(FormStatus.success);
  }

  notify(FormStatus value) {
    status = value;
    notifyListeners();
  }

}
