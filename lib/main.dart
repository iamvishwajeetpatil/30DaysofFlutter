import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: Center(
          child: Text("New Begginning",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}