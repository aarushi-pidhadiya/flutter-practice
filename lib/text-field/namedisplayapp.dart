import 'package:flutter/material.dart';

class Namedisplayapp extends StatefulWidget{
  const Namedisplayapp({super.key});

  @override
  State<Namedisplayapp> createState() =>_Namedisplayapp();

}
class _Namedisplayapp extends State<Namedisplayapp>{

  TextEditingController nameController=TextEditingController();
  String returnNAme='';

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name Display App"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'name',
                  hintText: 'enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      returnNAme=nameController.text;
                    });
                  },
                 child: const Text("show text"),
              ),
              Text('hello, $returnNAme'),
              ElevatedButton(
                  onPressed: (){
                    nameController.clear();
                    returnNAme="";
                  },
                child: const Text("Clear"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}