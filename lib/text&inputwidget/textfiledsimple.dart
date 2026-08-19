import 'package:flutter/material.dart';
class Textfiledsimple extends StatelessWidget{
  const Textfiledsimple({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Text"),
        ),
        body: Column(
          children: [
            // Padding(padding: EdgeInsetsGeometry.all(10)),
            // TextField(),
            // SizedBox(height: 20,),
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: "Name",
            //     hintText: "Enter Your Name",
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // TextField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.person),
            //     labelText: "Name",
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: "Search",
            //     suffixIcon: Icon(Icons.search),
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // TextField(
            //   decoration: InputDecoration(
            //     prefixText: "₹",
            //     suffixText: "INR",
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // TextField(
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: Colors.grey.shade200,
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            // SizedBox(height: 20,),
            // TextField(
            //   obscureText: true,
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(
            //     labelText: 'Password',
            //     prefixIcon: Icon(Icons.lock),
            //     border: OutlineInputBorder(),
            //   ),
            // ),

            TextField(
              textInputAction: TextInputAction.next,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: 'username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              textInputAction: TextInputAction.next,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                labelText: 'name',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        )
      ),
    );
  }
}