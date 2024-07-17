import 'package:e_commerce/screen/category/category_screen.dart';
import 'package:e_commerce/screen/favourite_cart_screen.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomTabChanger extends ChangeNotifier{
 int _onTap = 0;

  int get onTap => _onTap;

  void changeTab(int index) 
  {
    if (_onTap != index) {
      _onTap = index;
      notifyListeners();
    }
  }  


  int _count = 1;
  // int _counter = 0;

  int get count => _count;
  // int get counter => _counter;

  void increment(){   
    _count++;
    notifyListeners();
  }

  void decrements(){
    _count--;
    notifyListeners();
  }

}

class Increment extends BottomTabChanger{}

class Decrement extends BottomTabChanger{}