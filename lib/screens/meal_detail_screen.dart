import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipo/dummy_data.dart';

class MealDetails extends StatelessWidget {
  static String routeName = "./meal-details";
  @override
  Widget build(BuildContext context) {
    Widget buildSectionTitle(BuildContext context, String secTitle) {
      return Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            secTitle,
            style: Theme.of(context).textTheme.title,
          ));
    }

    Widget listContainer(Widget child) {
      return Container(
        height: 150,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        child: child,
      );
    }

    final String mealId = ModalRoute.of(context).settings.arguments;
    final SelectedMeal = MEALS_DATA.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(SelectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 200,
              width: double.infinity,
              child: Image.network(
                SelectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, "Ingredients"),
            listContainer(
              ListView.builder(
                itemBuilder: (context, index) => Container(
                  height: 40,
                  child: Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        SelectedMeal.ingredients[index],
                        style: TextStyle(color: Colors.black),
                        // textAlign: TextAlign.,
                      ),
                    ),
                  ),
                ),
                itemCount: SelectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, "Steps"),
            listContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('# ${index + 1}'),
                    ),
                    title: Text(SelectedMeal.steps[index]),
                  ),
                  Divider(),
                ],
              ),
              itemCount: SelectedMeal.steps.length,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
      ),
    );
  }
}
