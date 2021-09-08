import 'package:flutter/material.dart';
import 'package:recipo/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static String routeName = "./filters-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      drawer: MainDrawer(),
      body: Container(child: Text("Filters!")),
    );
  }
}
