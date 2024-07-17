import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Consumer(builder: (context, value, child){
        return 
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
              child: Column(
                children: [
                   Container(
                    height: MediaQuery.of(context).size.height*0.480,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      margin: EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
                      child: Column(                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(
                             child: Image(
                              fit: BoxFit.fill,
                                height: MediaQuery.of(context).size.height*0.350,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/images/shoes2.jpg')),
                           ),
                          const SizedBox(height: 2,),
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('shoename', textAlign: TextAlign.start,),
                                Text('description'),
                                Text('price'),
                              ],
                            ),
                          )
                        ],                      
                      ),
                    )
                  
                    
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.380,
                  width: MediaQuery.of(context).size.width,
                ),
              
              
                  Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //add to cart
                     Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        color: AppColors.bottombar,
                        borderRadius: BorderRadius.circular(5.0)),
                      child: TextButton(
                        child: Text('Add To Cart', style: TextStyle(color: Colors.white),),
                        onPressed: () {
                        
                      },),
                    ),
                    
                    SizedBox(width: 10.0,),
                     
                     Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        color: AppColors.bottombar,
                        borderRadius: BorderRadius.circular(5.0)),
                      child: TextButton(
                        child: Text('Place Order', style: TextStyle(color: Colors.white),),
                        onPressed: () {
                        
                      },),
                    )
                        ],
                      ),
                    ),            
                ],
                      ),
            );
      }),
    );
  }
}