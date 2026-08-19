import 'package:flutter/material.dart';
class Commonproperties extends StatelessWidget{
  const Commonproperties({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card Widget"),
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
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZXNlJTIwYnVyZ2VyfGVufDB8fDB8fHww"),
            ),
            title: Text("Burger"),
            subtitle: Text("Cheese Burger"),
            trailing: Text("₹149"),
          ),
        ),
      ),
    );
  }
}