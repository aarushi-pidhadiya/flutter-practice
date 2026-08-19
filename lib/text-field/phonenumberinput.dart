import 'package:flutter/material.dart';
class Phonenumberinput extends StatefulWidget{
  const Phonenumberinput({super.key});

  @override
  State<Phonenumberinput> createState()=>_Phonenumberinput();

}
class _Phonenumberinput extends State<Phonenumberinput>{

  TextEditingController phoneController=TextEditingController();
  String number='';

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Phone Number Input"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                showCursor: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  hintText: 'Enter phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      number=phoneController.text;
                    });
                  },
                  child: Text("Show Number"),
              ),
              Text("Your number : $number"),
            ],
          ),
        ),
      ),
    );
  }
}