import 'package:e_commerce/providers/drawer_provider.dart';
import 'package:e_commerce/providers/mainpage_provider.dart';
import 'package:e_commerce/screen/favourite_cart_screen.dart';
import 'package:e_commerce/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  
  @override
  Widget build(BuildContext context) {
    print('drawer');
   return Consumer(builder: ((context, value, child) {
      return Drawer(
      
     child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(            
            color: Color.fromARGB(255, 6, 43, 73)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                CircleAvatar(
                  
                  child: Icon(Icons.person,),
                  ),
                SizedBox(height: 20,),
                Text('ppatel879@rku.ac.in', 
                  // textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white),),
              ],
            )),
        ListTile(
          onTap: () {
            // provider._onTapedItem(ontap);
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          leading: Icon(Icons.person),
          title: Text('Profile'),
        ),
        ListTile(
          onTap: () {
            
          },
          leading: Icon(Icons.settings),
          title: Text('Setting'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()));
          },
          leading: Icon(Icons.favorite),
          title: Text('Favourite'),
        ),
        ListTile(
          onTap: () {
            
          },
          leading: Icon(Icons.shop),
          title: Text('Order'),
        ),
        ListTile(
          onTap: () {
            
          },
          leading: Icon(Icons.logout),
          title: Text('Logout'),
        ),
     ]),
    );
  
   }));
   
  }
}

