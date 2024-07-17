// import 'package:e_commerce/shared/drawer.dart';
// import 'package:e_commerce/utils/app_style.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       actions: [
//       InkWell(child: Icon(Icons.notifications),)
//     ]),
//     drawer: MyDrawer(),
//     body: SingleChildScrollView(
//       // scrollDirection: Axis.vertical,
      
//        child:Scaffold(
//         body: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.fromLTRB(8, 12, 0, 0),
//                height: 60,
//                width: MediaQuery.of(context).size.width*0.6,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Hello' ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
//                   Text('Welcome to Laza', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: AppColors.bgcolor),)
          
//               ],
//             ),
//            ),
//           ],
//         ),
//        ) ,
//     ),
    
    
    
//     );
//   }
// }