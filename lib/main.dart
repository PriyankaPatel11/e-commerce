// import 'package:e_commerce/custom/drawer.dart';
import 'package:e_commerce/dfg.dart';
import 'package:e_commerce/providers/allproduct_provider.dart';
import 'package:e_commerce/providers/mainpage_provider.dart';
import 'package:e_commerce/screen/auth/login_screen.dart';
import 'package:e_commerce/screen/auth/sign_up.dart';
import 'package:e_commerce/screen/cart_screen.dart';
import 'package:e_commerce/screen/favourite_cart_screen.dart';
import 'package:e_commerce/screen/category/category_screen.dart';
import 'package:e_commerce/screen/main_screen.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/order_screen.dart';
import 'package:e_commerce/screen/placed_order.dart';
import 'package:e_commerce/screen/profile/profile_screen.dart';
import 'package:e_commerce/shared/grid_view_home_page.dart';
import 'package:e_commerce/shared/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
     MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => BottomTabChanger() ),
      ChangeNotifierProvider(create: (_) => Increment()),
      ChangeNotifierProvider(create: (_) => Decrement()),
      ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
    child: MyApp(),
    )
    );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      home: MainScreen(),
    );
      
  }

}