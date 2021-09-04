import 'package:flutter/material.dart';
import 'package:recipo/category_item.dart';
import 'package:recipo/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        children:
            DUMMY_DATA.map((e) => CategoriItem(e.title, e.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20));
  }
}
