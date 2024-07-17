import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.1),
      body:  Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          gradient: LinearGradient(
            colors: [Colors.blueAccent.withOpacity(0.01), Colors.grey.withOpacity(0.01)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            
            )
        ),
        child: ListView(
              children: [
              //   Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0)),
              //     color: AppColors.bottombar),
              // padding: EdgeInsets.all(8.0),
              // height: MediaQuery.of(context).size.height*0.3,
              // width: MediaQuery.of(context).size.width,
              // child: Column(),
              // ),
               Container(
                // color: Colors.blueGrey.shade500,
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width,
                 child: Row(children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.person),),
                  SizedBox(width: 5,),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.60,
                    child: Column(
                      children: [
                        Text('Priyanka Patel',),
                        Text('ppatel879@rku.ac.in')
                      ],
                    ),)
                 ],),
               ),
                ListTile(
                    leading: Icon(Icons.info_outline_rounded),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Account Information'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Orders'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Favourite'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Contact Us'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Notification'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Setting'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    
                    title: Text('Logout'),
                    onTap: (){},
                  ),
              ],
            ),
      ),          
    );
  }
}