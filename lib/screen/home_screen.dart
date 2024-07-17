// import 'package:e_commerce/screen/main_screen.dart';
// import 'package:e_commerce/shared/grid_view_home_page.dart';

import 'package:e_commerce/providers/allproduct_provider.dart';
import 'package:e_commerce/screen/all_products.dart';
import 'package:e_commerce/screen/order_screen.dart';
import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/shared/product_viewall.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   @override
  void initState() {
    super.initState();

    // Use WidgetsBinding.instance.addPostFrameCallback to ensure that context is fully initialized.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductProvider>(context, listen: false).getAllProduct();
    });
  }


  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
        backgroundColor:Colors.blueAccent.withOpacity(0.1),
    body:  SingleChildScrollView(
      child: Padding(  
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //hello container under appbar
             Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text('Hello' ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                Text('Welcome to E-Kart', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: AppColors.bgcolor),)
            
                ],
              ),
             ), //title and subtitle
             const SizedBox(height: 12,),
             //Row widget that contain 
             //search bar
             Row(
              children: [
                Container(                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 228, 237, 241),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.760,
                  child: TextField(
                    decoration: InputDecoration(                   
                      hintText: 'Search.....',
                      // prefix: Icon(Icons.search,),
                      focusColor: Color.fromARGB(255, 6, 43, 73),
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10))
                  ),)
                ),
                const SizedBox(width: 5,),              
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 43, 73),
                    borderRadius: BorderRadius.circular(5.0)),               
                  child: InkWell(
                    onTap: (){},
                    child: Icon(                   
                      Icons.search,
                      color: Colors.white,)),)
              ],
             ) ,  // search row end
              // choose brand
              // SizedBox(height: 8,),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         
                      children: [
                        Container(
                          child: Text('Choose Brand'),                      
                        ),
                        // Gap(150),
                        // SizedBox(width: 280,),
                        // Container(
                        //   child: TextButton(
                        //     onPressed: (){}, 
                        //     child: Text('View All'))
                        // )
                      ],
                    ),
                  )
                ],
              ) ,  ////end of choose brand
                     
            const SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: MediaQuery.of(context).size.width,
      
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 200,
                  itemBuilder: (context, index){
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, ),
                          height: 27,
                          width: 40,                    
                          decoration: BoxDecoration(                                          
                            borderRadius: BorderRadius.circular(25.0)),
                            child: Container(
                                
                              child: Image(
                              fit: BoxFit.fill,                            
                              image: AssetImage('assets/images/ad1.png')),
                          ),                 
                        ),
                  );
                     
                }),
              ),
            ),
          //end brand list 
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Container(
                          child: Text('All Products'),
                          
                        ),
                        // Gap(150),
                        // SizedBox(width: 300,),
                        Container(
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AllProducts()));
                            }, 
                            child: Text('View All'))
                        )
                      ],
                    ),
                  ),     
                ],
              ), //end of row
              // SizedBox(height: 4,),
              Consumer<ProductProvider>(
                builder:(context, provider,child){
                  final product = provider.product;
                  return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  
                  height: MediaQuery.of(context).size.height*0.40,
                  child: SizedBox(       
                              
                    child: ListView.builder(    
                                     
                      scrollDirection: Axis.horizontal,
                      itemCount: product.length,
                      itemBuilder: (context, index) {
                          return Flexible(               
                         child: Container(
                          padding: EdgeInsets.zero,
                          height: MediaQuery.of(context).size.height*0.7,
                          width: MediaQuery.of(context).size.width*0.267,                       
                          decoration: BoxDecoration(
                            // color: Colors.blueGrey.shade200,
                            // border: Border.all(color: Colors.black),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.shade200,
                                blurRadius: 2.0,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 ClipRRect(                               
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)
                                  ),
                                  child: Image.network(product[index].image,
                                  height: 75,
                                  width: 300,
                                  fit: BoxFit.fill,)
                                  ),
                                  
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                    height: MediaQuery.of(context).size.height*0.1,
                                    width: MediaQuery.of(context).size.width*0.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Flexible(child: Text(product[index].title)),
                                        Flexible(child: Text('${product[index].price} - ${product[index].category}')),
                                        Flexible(child: Text('${product[index].rating.rate} (${product[index].rating.count})')),
                                    ],),
                                  )
                                 
                            ],
                          ),
                        ),
              );                        
                
                      
                        },                    
                    ),
                  ),
                ),
              
              )   ;  
                
                } )
              
            ],
          ),
        ),
    ),
       
   );
  }
}


