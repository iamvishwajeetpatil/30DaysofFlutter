import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String t = "Day";
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Welcome Vishwa"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "New Begginning\n$t $days",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        width: 200.0,
      ),
    );
  }
}
