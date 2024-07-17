import 'package:flutter/services.dart' as the_bundle;
import 'package:e_commerce/models/sneakers_model.dart';

class Helper{
  Future <List<Products>> getMaleSneakers() async{
    final data = await the_bundle.rootBundle.loadString('assets/json/men_shoes.json');
    final maleList = sneakersFromJson(data);
    return maleList;
  }

  Future <Products> getMaleSneakersById(String id) async{
  final data = await the_bundle.rootBundle.loadString('assets/json/men_shoes.json');
  final maleList = sneakersFromJson(data);
  final sneaker = maleList.firstWhere((sneaker) => sneaker.id == id);
  return sneaker;
  }



}