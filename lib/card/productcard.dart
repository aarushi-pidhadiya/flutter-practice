import 'package:flutter/material.dart';
class Productcard extends StatelessWidget{
  const Productcard({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product Card"),
        ),
        body: Card(
          elevation: 5,
          margin: EdgeInsets.all(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1677838847804-4054143fb91a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aGVhZHBob25lJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D"),
              ),
              SizedBox(height: 20,),
              Text("Wireless Headphones",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Text("Comfortable wireless headphones"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1999"),
                  SizedBox(width: 30,),
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 8,),
                  Icon(Icons.favorite_border),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}