import 'package:flutter/material.dart';
import 'package:myapp/screens/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String? dataResult;

void getData() async{
  var result = await Navigator.pushNamed(context, '/second');
  setState((){
    dataResult = result as String?;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$dataResult'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/second');
            getData();
          },
          child: Text("Go to Second Page"),
          ),
          )
      );
  }
}
