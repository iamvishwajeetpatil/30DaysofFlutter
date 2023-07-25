import 'package:flutter/material.dart';
import 'package:flutter_application_day1/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String t = "Day";
    return Scaffold(
      // backgroundColor: Colors.blue[200],
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "New Begginning $t $days",
          style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
