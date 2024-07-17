// import 'dart:js_util';

import 'package:e_commerce/models/sneakers_model.dart';
import 'package:e_commerce/screen/category/kids_category.dart';
import 'package:e_commerce/screen/category/men_category.dart';
import 'package:e_commerce/screen/category/women_category.dart';
import 'package:e_commerce/services/helper.dart';
import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with TickerProviderStateMixin{

  late Future<List<Products>> _male;

  void getMale(){
    _male = Helper().getMaleSneakers();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMale();
    
  }

  late final TabController _tabController =  TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  child: Column(                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Athletics Shoes",style: TextStyle(color: Colors.indigo.shade900,fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("Collections",style: TextStyle(color: Colors.indigo.shade900,fontSize: 18,fontWeight: FontWeight.bold),),
                      TabBar( 
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.indigo.shade900,
                        
                        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                        unselectedLabelColor: Colors.grey.withOpacity(0.5),
                        tabs: [
                          Tab(text: 'Men Shoes', ),
                          Tab(text: 'Women Shoes',),
                          Tab(text: 'Kids Shoes',),
                        ]),
                    
                    ],
                  ),
                ),
              ),
             
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.160),
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                    Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.8,
                        child: FutureBuilder(
                          future: _male, 
                          builder: (context, snapshot){
                            if(snapshot.connectionState == ConnectionState.waiting){
                              return CircularProgressIndicator();
                            }else if(snapshot.hasError){
                              return Text("Error ${snapshot.error}");
                            }else{
                              final male = snapshot.data;
                              return GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                          itemCount: male!.length,
                          itemBuilder: (context, index){
                            final shoe = snapshot.data![index];
                            return  MenCategory(
                              price: shoe.price.toString(), 
                              category: shoe.category.toString(), 
                              id: shoe.id.toString(), 
                              name: shoe.name, 
                              image: shoe.imageUrl,
                              );
                          });
                            }
                          })
                      ),
                      
                      ],
                    ),
                    
                    Column(children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.80,
                        color: Colors.green,),
                      ],
                    ),
                    Column(children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.80,
                        color: Colors.blue,),
                      ],
                    ),
                    
                  ]),
                ),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}