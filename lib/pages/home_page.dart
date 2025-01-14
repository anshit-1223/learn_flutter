import 'package:day_01/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String ytchannel = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:
          Center(child: Text("Welcome to $days Days of Flutter by $ytchannel")),
      drawer: MyDrawer(),
    );
  }
}
