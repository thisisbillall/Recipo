import 'package:flutter/material.dart';
import 'package:recipo/screens/Categories_screen.dart';
import 'package:recipo/screens/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Recipo"),
            bottom: TabBar(
              automaticIndicatorColorAdjustment: true,
              tabs: [
                Tab(icon: Icon(Icons.category), text: 'Categories'),
                Tab(icon: Icon(Icons.favorite), text: 'Favourites'),
              ],
            ),
          ),
          body: TabBarView(
            children: [CategoriesScreen(), FavouriteScreen()],
          ),
        ));
  }
}
