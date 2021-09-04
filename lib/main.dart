import 'package:flutter/material.dart';
import 'package:recipo/Categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recipo",
      theme: ThemeData(primarySwatch: Colors.green),
      home: CategoriesScreen(),
    );
  }
}
