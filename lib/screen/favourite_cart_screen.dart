import 'package:e_commerce/shared/drawer.dart';
import 'package:e_commerce/shared/grid_view_home_page.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Text('Favourite Products'),
    );
  }
}