import 'package:e_commerce/models/allproduct_model.dart';
import 'package:e_commerce/services/allproduct_services.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier{
  bool isLoading = false;
  List<ProductsModel> _product = [];
  List<ProductsModel> get product => _product;

  Future<void> getAllProduct() async{
    notifyListeners();
    final response = await ProductsModelervice.fetchProducts();

    _product = response.cast<ProductsModel>();
    isLoading = false;
    notifyListeners();
  }

}