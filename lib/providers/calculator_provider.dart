import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Calculator extends ChangeNotifier{
  num _answer=0;
  var maskFormatter = MaskTextInputFormatter(
      mask: '######',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  Calculator();

  get getAnswer => _answer;


  void  add(int a, int b){
    _answer = a+b;
    notifyListeners();
  }

  void clear(){
    _answer=0;
    notifyListeners();
  }

  void minus(int a, int b){
    _answer = a-b;
    notifyListeners();
  }

  void div(int a, int b){
    _answer = a / b;
    notifyListeners();
  }

  void multi(int a, int b){
    _answer = a*b;
    notifyListeners();
  }

  void arith(int a , int b ){
    _answer = (a+b)/2;
    notifyListeners();
  }

  void geo(int a, int b){
    _answer= sqrt((a*b));
    notifyListeners();
  }

  void sumNum(int a, int b){
    int sum1=0;
    int sum2=0;
    for(int i=0;i<a.toString().length;i++){
      sum1+=int.parse(a.toString()[i]);
    }
    for(int i=0;i<b.toString().length;i++){
      sum1+=int.parse(b.toString()[i]);
    }
    _answer=sum1+sum2;
    notifyListeners();
  }

}