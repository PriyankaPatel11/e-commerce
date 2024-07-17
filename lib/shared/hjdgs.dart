
//         // Container(
//         //   height: 200,
//         //   width: MediaQuery.of(context).size.width*0.4,
//         //   child: Card(
//         //     child: Stack(
//         //       children: [
//         //       Container(
//         //         height: 250,
//         //         width: 100,
                
//         //         child: Image(
//         //           fit: BoxFit.fill,
//         //           image: AssetImage('assets/images/elsa.jpg'),
//         //           ),
                
//         //       ),
//         //       Icon(Icons.favorite_border_outlined,),
              
//         //     ],
//         //     ),
//         //   ),
//         // )

//         // Column(
//         //   crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: [
//         //     Card(
              
//         //       child: Padding(
//         //         padding: const EdgeInsets.all(8.0),
//         //         child: Column(
//         //           crossAxisAlignment: CrossAxisAlignment.start,
//         //           children: [
//         //             // Stack(                      
//         //             //   children: [
//         //             //     Container(
//         //             //       height: 100,
//         //             //       width: 100,
//         //             //       child: Image(
//         //             //         image: AssetImage('assets/images/nike.jpg')),
//         //             //       ),
//         //             //     Align(
//         //             //       alignment: Alignment.topRight,
//         //             //       child: Icon(Icons.favorite_outline),
//         //             //     ),
                        
//         //             //   ],
//         //             // ),
                    
//         //             // SizedBox(height: 8,),
//         //             // Padding(
//         //             //   padding: const EdgeInsets.all(6.0),
//         //             //   child: Column(
//         //             //     crossAxisAlignment: CrossAxisAlignment.start,
//         //             //     children: [
//         //             //       Text('New Collection'),
//         //             //       Text('Adidas'),
//         //             //       Text('\$499')
//         //             //     ],
//         //             //   ),
//         //             // )
                  
                  
//         //           ],
//         //         ),
//         //       ),
//         //     )
//         //   ],
//         // )
        
// import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Card(
//         child: ListView.builder(itemBuilder: (context, index){
//           return Container();
//         }),
//       ),
//     );
//   }
// }

//    Row(children: [
//             Container(
              
//               height: 60,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 220, 225, 228),
//                 borderRadius: BorderRadius.circular(5.0)),
//               child: Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 5, ),
//                     height: 27,
//                     width: 40,                    
//                     decoration: BoxDecoration(                                          
//                       borderRadius: BorderRadius.circular(25.0)),
//                       child: Container(

//                         child: Image(
//                         fit: BoxFit.fill,
                        
//                         image: AssetImage('assets/images/ad1.png')),
//                     ),                 
//                   ),
//                   SizedBox(width: 8,),
//                   Text('Adidas')
//                 ],
//               ),
//             )
//           ],
//           ),

//#######################################################

// homepage listview
  // return Container(
                          
  //                         margin: EdgeInsets.all(8.0),
  //                         padding: EdgeInsets.all(5.0),
  //                         height: MediaQuery.of(context).size.height*0.4,
  //                         width: MediaQuery.of(context).size.width*0.4,
  //                         decoration: BoxDecoration(
  //                                          boxShadow: [
  //                   BoxShadow(
  //                     color: Colors.grey.withOpacity(0.6),
  //                     spreadRadius: 2,
  //                     offset: Offset(0, 3),
  //                     blurRadius: 10,
                      
  //                   )
  //                 ],
  //                           color: Color.fromARGB(255, 242, 243, 237),
  //                           borderRadius: BorderRadius.circular(10)),
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Container(
  //                               padding: EdgeInsets.zero,
  //                               decoration: BoxDecoration(
                      
  //                                 // color: Color.fromARGB(255, 230, 235, 227),
  //                                 borderRadius: BorderRadius.circular(10)),
  //                               height: MediaQuery.of(context).size.height*0.2,
  //                               width: MediaQuery.of(context).size.width*0.50,
  //                               child: Stack(
  //                               children: [
  //                                 Container(
  //                                   decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(20)),
  //                                   height: 148,
  //                                   width: 193,
  //                                   child: ClipRRect(
  //                                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
  //                                     child: Image(
  //                                       fit: BoxFit.fill,
                                        
  //                                       image: AssetImage('assets/images/shoes2.jpg',),
  //                                       ),
  //                                   ),
  //                                 ),
  //                                 Align(                                 
  //                                   alignment: Alignment.topLeft,
  //                                 child: Icon(Icons.favorite_outline_rounded, color: Colors.white,),)
  //                               ],
  //                             ),
  //                             ),
  //                             SizedBox(height: 15,),
  //                             Row(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               children: [
  //                                 Column(                                
  //                                   crossAxisAlignment: CrossAxisAlignment.start,                          
  //                                   children: [
  //                                     Text('Nike New Collection'),
  //                                     Text('Nike'),
  //                                     Text('\$499'),
  //                                   ],
  //                                 ),
  //                                 Container(
  //                                   height: 30,
  //                                   width: 50,
  //                                   margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
  //                                   decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(5),
  //                                     color: AppColors.bottombar),
  //                                   padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
  //                                   child: InkWell(
  //                                     onTap: (){
  //                                       Navigator.push(context, MaterialPageRoute(builder: (context) => OrderScreen()));
  //                                     },
  //                                     child: Text('Order', textAlign: TextAlign.center,
  //                                     style: TextStyle(
                                        
  //                                       color: Colors.white),),
  //                                   ),
  //                                 )
  //                               ],
  //                             )                            
  //                           ],
  //                         ),
  //                       );
                        
                        