import 'package:flutter/material.dart';
import 'package:recipo/screens/Categories_screen.dart';
import 'package:recipo/screens/category_meals_screen.dart';
import 'package:recipo/screens/filters_screen.dart';
import 'package:recipo/screens/meal_detail_screen.dart';
import 'package:recipo/screens/tab_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recipo",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Railway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'))),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealScreen.routeNAme: (ctx) => CategoryMealScreen(),
        MealDetails.routeName: (ctx) => MealDetails(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      // onGenerateRoute: (settings) { when route not registered in routes table
      //   return MaterialPageRoute(builder: (ctx))
      // },
      // onUnknownRoute: (settings) {return}, when onGen fails
    );
  }
}
