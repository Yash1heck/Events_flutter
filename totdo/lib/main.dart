import 'package:flutter/material.dart';
import 'widget/addEvent.dart';

void main() {
  runApp(MaterialApp(title:"Eventzz",home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Eventsss")),
      body: Center(child: AddtodoDialog()),
      
    );
  
  }
}
