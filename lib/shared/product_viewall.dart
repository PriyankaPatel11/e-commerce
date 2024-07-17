import 'package:e_commerce/screen/order_screen.dart';
import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';

class ShowAllProduct extends StatelessWidget {
  const ShowAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          actions: [            
            Icon(Icons.notifications),
          ],
        ),

      body: SingleChildScrollView(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 12,
          itemBuilder: (context, sanpshot){
            return Container(
                  
                  height: MediaQuery.of(context).size.height*0.40,
                  child: SizedBox(                 
                    child: ListView.builder(                   
                      scrollDirection: Axis.horizontal,
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Container(
                          
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(5.0),
                          height: MediaQuery.of(context).size.height*0.4,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                                           boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                      blurRadius: 10,
                      
                    )
                  ],
                            color: Color.fromARGB(255, 242, 243, 237),
                            borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                      
                                  // color: Color.fromARGB(255, 230, 235, 227),
                                  borderRadius: BorderRadius.circular(10)),
                                height: MediaQuery.of(context).size.height*0.2,
                                width: MediaQuery.of(context).size.width*0.50,
                                child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                    height: 148,
                                    width: 193,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                      child: Image(
                                        fit: BoxFit.fill,
                                        
                                        image: AssetImage('assets/images/shoes2.jpg',),
                                        ),
                                    ),
                                  ),
                                  Align(                                 
                                    alignment: Alignment.topLeft,
                                  child: Icon(Icons.favorite_outline_rounded, color: Colors.white,),)
                                ],
                              ),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Column(                                
                                    crossAxisAlignment: CrossAxisAlignment.start,                          
                                    children: [
                                      Text('Nike New Collection'),
                                      Text('Nike'),
                                      Text('\$499'),
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: 50,
                                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.bottombar),
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderScreen()));
                                      },
                                      child: Text('Order', textAlign: TextAlign.center,
                                      style: TextStyle(
                                        
                                        color: Colors.white),),
                                    ),
                                  )
                                ],
                              )                            
                            ],
                          ),
                        );
                        },                    
                    ),
                  ),
                );
              
          }),
      )
    );
  }
}