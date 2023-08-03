// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}


class HomeState extends State<Home> {
  // Add state variables and functions.
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    // Replace with Card1.
    const Card1(),
    // Replace with Card2.
    const Card2(),
    // TODO: Replace with Card3.
    Container(color: Colors.blue),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Social',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // Show selected tab.
      body: pages[_selectedIndex],
      // Add bottom navigation bar.
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // Set the selected tab bar.
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
