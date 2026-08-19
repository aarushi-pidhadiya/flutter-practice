import 'package:flutter/material.dart';

class Inputscreen extends StatefulWidget{
  const Inputscreen({super.key});

  @override
  State<Inputscreen> createState()=>_InputscreenState();

}
class _InputscreenState extends State<Inputscreen>{

  TextEditingController nameController=TextEditingController();

  String name="";

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
          padding:EdgeInsets.all(20),
          child:Column(
            children:[
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      name=nameController.text;
                    });
                  },
                  child: const Text("Get Text"),
              ),
              ElevatedButton(
                  onPressed: (){
                    nameController.text="Flutter Developer";
                  },
                  child: const Text("Set Text")
              ),
              ElevatedButton(
                  onPressed: () {
                    nameController.clear();
                  },
                  child: const Text("Clear"),
              ),
              Text(name),
            ],
          ),
      ),
    );
  }
}