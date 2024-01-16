import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../pages/pages.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
   Home(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Cart Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Favourite Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Primary.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Primary.black,
            ),
            label: 'Home',
            backgroundColor: Primary.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Primary.black,
            ),
            label: 'Catalog',
            backgroundColor: Primary.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Primary.black,
            ),
            label: 'Cart',
            backgroundColor: Primary.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Primary.black,
            ),
            label: 'Favorite',
            backgroundColor: Primary.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Primary.black,
            ),
            label: 'Profile',
            backgroundColor: Primary.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Primary.black,
        onTap: _onItemTap,
      ),
    );
  }
}