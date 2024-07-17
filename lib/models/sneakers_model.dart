
import 'dart:convert';

List<Products> sneakersFromJson(String str) => List<Products>.from(json.decode(str)
.map((x) => Products.fromJson(x)));
class Products {
    final int id;
    final String name;
    final Category category;
    final String imageUrl;
    final String oldPrice;
    final double price;

    Products({
        required this.id,
        required this.name,
        required this.category,
        required this.imageUrl,
        required this.oldPrice,
        required this.price,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
      id: json["id"], 
      name: json["name"], 
      category: json["category"], 
      imageUrl: json["imageUrl"], 
      oldPrice: json["oldPrice"], 
      price: json["price"]
    );

}

enum Category {
    CATEGORY_MEN,
    MEN,
    NOP
}
