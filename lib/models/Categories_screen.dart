import 'package:flutter/material.dart';
import 'package:recipo/category_item.dart';
import 'package:recipo/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipo")),
      body: GridView(
          padding: const EdgeInsets.all(20),
          children: DUMMY_DATA
              .map((e) => CategoriItem(e.id, e.title, e.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20)),
    );
  }
}
