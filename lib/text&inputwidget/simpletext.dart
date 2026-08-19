import 'package:flutter/material.dart';
class Simpletext extends StatelessWidget{
  const Simpletext({super.key});
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
            Text("Hello Flutter"),
            Divider(),
            Text(
              "hello flutter",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 5,
                wordSpacing: 7,
              ),
            ),
            Divider(),
            Text(
              "hello\n"
              "how are you\n"
              "im find and u?\n"
            ),
            Divider(),
            Text(
                "flutter is Googles ui toolkit for building beautiful applications .flutter is Googles ui toolkit for building beautiful applications .",
                maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}