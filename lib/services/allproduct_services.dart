import 'dart:convert';
import 'package:e_commerce/models/allproduct_model.dart';
// import 'package:e_commerce/models/sneakers_model.dart';
import 'package:http/http.dart' as http;

class ProductsModelervice {
  static Future<List<ProductsModel>> fetchProducts() async {
    
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);      
      return jsonResponse.map((e) => ProductsModel.fromJson(e)).toList(); 
        
    }  
    else{
      throw Exception("Failed to laod products");
    }
  }
}