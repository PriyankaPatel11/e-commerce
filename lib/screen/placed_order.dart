import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('My Orders'),
        actions: [
          Icon(Icons.person)
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index){
            return Container();
          }
          ),
      )
    );
  }
}