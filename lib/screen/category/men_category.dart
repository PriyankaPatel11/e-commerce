import 'package:e_commerce/shared/grid_view_home_page.dart';
import 'package:flutter/material.dart';

class MenCategory extends StatefulWidget {
  const MenCategory({Key? key, required this.price, required this.category, required this.id, required this.name, required this.image}) : super(key: key);

  final String price;
  final String category;
  final String id;
  final String name;
  final String image;
  
  @override
  State<MenCategory> createState() => _MenCategoryState();
}


class _MenCategoryState extends State<MenCategory> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width*0.6,
          decoration:BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(                
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1)
              ),],
         
        ),
        child: Column(
          children: [
           Stack(children: [
             Container(
              height: MediaQuery.of(context).size.height*0.23,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.image))
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child:GestureDetector(
                onTap: null,
                child: Icon(Icons.favorite_border_outlined),
              ) ,
              )
           ],
           ),
           Padding(padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(widget.name, style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),),
              Text(widget.category, style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),),
              Text(widget.price),
            ]),
           ),
          
          ],
        ),
        ),
      )  
    );
  }
}