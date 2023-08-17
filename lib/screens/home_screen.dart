import 'package:flutter/material.dart';
import 'package:flutter_application_day1/models/catalog.dart';
import 'package:flutter_application_day1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimmylist = List.generate(4, (index) => CatalogModel.items[0]);
    int days = 1;
    String t = "Day";
    return Scaffold(
      // backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dimmylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dimmylist[index],
            );
          },
        ),
      ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: Text(
      //         "New Begginning $t $days",
      //         style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ],
      // ),
      drawer: const MyDrawer(),
    );
  }
}
