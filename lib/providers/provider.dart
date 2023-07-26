import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_defualt_project/ui/screens/first_screen.dart';
import 'package:flutter_defualt_project/ui/screens/second_creen.dart';
import 'package:flutter_defualt_project/ui/screens/third_screen.dart';

class NumProvider with ChangeNotifier{
  int _count;
  int _indexScreen;
  NumProvider({required int count,required int index}):_count=count,_indexScreen=index;

  get getCount=>_count;
  get getIndex=>_indexScreen;

  List<Widget>screens=[FirstScreen(),SecondScreen(),ThirdScreen()];

   setCount(int index){
    _indexScreen=index;
    notifyListeners();
  }

  void add(){
    _count++;
    notifyListeners();
  }
  void minus(){
    _count--;
    notifyListeners();
  }


}