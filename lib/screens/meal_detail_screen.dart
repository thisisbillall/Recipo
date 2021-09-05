import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  static String routeName = "./meal-details";
  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Center(
        child: Text("Meal details!-$mealId"),
      ),
    );
  }
}
