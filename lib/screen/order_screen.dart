import 'dart:math';

import 'package:e_commerce/providers/mainpage_provider.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/main_screen.dart';
import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
   OrderScreen({super.key});

  // TextEditingController countController = TextEditingController();
  
 
  @override
  Widget build(BuildContext context) {
      return   Scaffold(
       appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          child: Icon(Icons.arrow_back_ios),),
          actions: [            
            Icon(Icons.notifications),
          ],
        ),
        
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height*0.380,
              width: MediaQuery.of(context).size.width,
              child: Card(
                
                margin: EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                       child: Image(
                        
                        fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height*0.250,
                          width: MediaQuery.of(context).size.width,
                          image: AssetImage('assets/images/shoes2.jpg')),
                     ),
                    const SizedBox(height: 2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('shoenm', textAlign: TextAlign.start,),
                        Text('description'),
                        Text('price'),
                      ],
                    )
                  ],                      
                ),
              )
            
              
          ),
         
          SizedBox(height: 8,),
          Container(
            // color: Colors.blueAccent,
            padding: EdgeInsets.only(left: 20, top: 10),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Rating', textAlign: TextAlign.center,),
                SizedBox(width: 10,),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Icon(Icons.star_border);
                }),)
              //  ChoiceChip(label: label, selected: selected)
              ],
            ),
            ),
                      
            Container(
              // color: Colors.blue,
              padding: EdgeInsets.fromLTRB(20.0, 2.0, 0, 1.5),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shoe size', ),
                  // ChoiceChip(label: Text('5'), selected: (context ))
                ],
              ),
            ),
           
          Container(
            // color: Colors.amber,
            padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
            height: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width,
            child: Text('Details\ngjnbdfkjguydhfjksbyyhiusiuy8yrwiu\njkhewyiuyuf\njuyriuhsd'),
            ),
           Divider(
              thickness: sqrt1_2,
              indent: 5.0,
              endIndent: 5.0,
              color: Colors.black45,
            ),
          
          Container(
            // color: Colors.amberAccent,
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            height: MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<BottomTabChanger>(builder: (context, value, child) {
                  return  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                     Container(
                      decoration: BoxDecoration(
                        color: AppColors.bottombar,
                        borderRadius: BorderRadius.circular(5.0),),
                      height: 40,
                      width: 40,                    
                      child: IconButton(
                        onPressed: (){
                          print('object');
                          value.decrements();
                        }, 
                        icon: Icon(Icons.remove, 
                        color: AppColors.txtcolor,)),
                    ),              
                    const SizedBox(width: 5.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),),
                      height: 40,
                      width: 60,
                      child: TextField(
                        textAlign: TextAlign.center,
                        readOnly: true,
                        controller: TextEditingController(text:'${value.count}'),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)))),
                    ),                                     
                    const SizedBox(width: 5.0,),
                    Container(                        
                      decoration: BoxDecoration(
                        color: AppColors.bottombar,
                        borderRadius: BorderRadius.circular(5.0),),
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: (){
                          print('object1');
                        value.increment();                        
                      }, icon: Icon(Icons.add, color: AppColors.txtcolor,)),
                    ),                  
                  ],
                ));             
                }),              
              Container(               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [            
               Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColors.bottombar,
                  borderRadius: BorderRadius.circular(5.0)),
                child: TextButton(
                  child: Text('Confirm Order', style: TextStyle(color: Colors.white),),
                  onPressed: () {                 
                },),
              )
                  ],
                ),
              ),             
              ],
            ),
          ),        
        ],
      ),      
    );  
     
  }
}
