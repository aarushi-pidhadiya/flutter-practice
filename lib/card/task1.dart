import 'package:flutter/material.dart';
class Task1 extends StatelessWidget{
  const Task1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact Card"),
        ),
        body: Card(
          elevation: 5,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGVyc29uJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D"),
            ),
            title: Text("Amelia"),
            subtitle: Text("Designer"),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.call),
                Icon(Icons.favorite_border),
              ],
            ),
          ),
        ),
      ),
    );
  }
}