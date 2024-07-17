import 'package:flutter/material.dart';

class DrawerChanger extends ChangeNotifier{
   int _onTap = 0;

   int get  onTap => _onTap;


    void _onTapedItem(int index){
      if(_onTap != index){
        _onTap = index; 
        notifyListeners();
      }
    }
}