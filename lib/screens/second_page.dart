import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});


  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
String? data = "hello world";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(""),
        ),
        body: Center(
          child: ElevatedButton(
           onPressed: (){
            Navigator.pop(context, data);
          },
          child: Text('Send data'),
        ),)
    );
  }
}
