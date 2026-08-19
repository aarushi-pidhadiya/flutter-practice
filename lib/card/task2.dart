import 'package:flutter/material.dart';
class Task2 extends StatelessWidget{
  const Task2({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile Card"),
        ),
        body: Card(
          elevation: 5,
          margin: EdgeInsets.all(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage("https://media.istockphoto.com/id/2222726998/photo/consultancy-office-the-ceo.webp?a=1&b=1&s=612x612&w=0&k=20&c=zxIZWjbe5g6QgY9bLw3pn3vXesd_kTyIkTnx8Cdy-yo="),
              ),
              SizedBox(height: 10,),
              Text("Emma Watson",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Text("UI UX Designer"),
              Text("Mumbai,India"),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 8,),
                  Text("emma@gmail.com")
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 8,),
                  Text("11-1111-11111")
                ],
              ),
              SizedBox(height: 10,),
              Icon(Icons.favorite),
            ],
          )
        ),
      ),
    );
  }
}