import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/providers/mainpage_provider.dart';
import 'package:e_commerce/screen/favourite_cart_screen.dart';
import 'package:e_commerce/screen/category/category_screen.dart';
import 'package:e_commerce/screen/home_screen.dart';
import 'package:e_commerce/screen/profile_screen.dart';
import 'package:e_commerce/shared/drawer.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Consumer<BottomTabChanger>(     
      builder: (context, provider, _) { 
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.withOpacity(0.1),
          //    flexibleSpace: Stack(
          //   children: <Widget>[
          //     Container(
          //       height: double.infinity,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.grey.shade400, Colors.grey.shade100],
          //           begin: Alignment.centerLeft,
          //           end: Alignment.centerRight,
          //         ),
          //       ),
          //     ),
              
          //   ],
          // ),
          actions: [            
            Icon(Icons.notifications),
          ],
        ),
        drawer: MyDrawer(),       
        body: Center(         
          child: _widgetOptions.elementAt(provider.onTap)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: provider.onTap,         
          onTap: (index) {
            provider.changeTab(index);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false, 
          unselectedItemColor: Colors.white,         
          selectedItemColor: Colors.blueAccent,       
          backgroundColor: AppColors.bottombar,
          type: BottomNavigationBarType.fixed,
          items: const [     
            BottomNavigationBarItem(
              label: 'Home',
              // backgroundColor: Color.fromARGB(255, 6, 43, 73) ,
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(           
              label: 'Category',
              icon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      );
      }
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
}
