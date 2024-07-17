import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        leading: IconButton(
            alignment: Alignment.topLeft,
            onPressed: (){}, 
            icon: Icon(Icons.list)),
            title: Text('Home Page'),
        actions: [
             IconButton(
            alignment: Alignment.centerRight,
            onPressed: (){}, 
            icon: Icon(Icons.person)),
        ],
      ),);
  }
}