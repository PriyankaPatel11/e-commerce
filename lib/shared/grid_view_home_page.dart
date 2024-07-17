import 'package:flutter/material.dart';

class grid_view_homepage extends StatefulWidget {
  const grid_view_homepage({
    super.key,
  });

  @override
  State<grid_view_homepage> createState() => _grid_view_homepageState();
}

class _grid_view_homepageState extends State<grid_view_homepage> {

  void onTouch(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 5.0,
        crossAxisCount: 2), 
        itemCount: 100,
        itemBuilder: (context ,index){
            return  Card(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Stack(
              children: [
                Image(
                  // fit: BoxFit.fill,
                  image: AssetImage('assets/images/nike.jpg')),
                Align(child: Icon(Icons.favorite_outline),
                alignment: Alignment.topRight,)
              ],
                     ),
                      SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Collection'),
                          Text('Adidas'),
                          Text('\$499')
                        ],
                      ),
                    )
           ],
         ),
        );
    
        }),
    );
   
  }
}