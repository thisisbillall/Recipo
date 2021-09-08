import 'package:flutter/material.dart';
import 'package:recipo/screens/Categories_screen.dart';
import 'package:recipo/screens/favourite_screen.dart';
import 'package:recipo/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _pages = [
    CategoriesScreen(),
    FavouriteScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Recipo"),
        ),
        body: _pages[_selectedPageIndex],
        drawer: MainDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          backgroundColor: Colors.pink,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.category),
                title: Text("Categories")),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.favorite),
                title: Text("Favourites")),
          ],
        ));
  }
}
