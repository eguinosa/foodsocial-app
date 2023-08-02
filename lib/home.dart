// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';


// 1
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}


class HomeState extends State<Home> {
  // TODO: Add state variables and functions.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Social',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab.
      body: Center(
        child: Text(
          "Let's get cooking 👩‍🍳",
          // 3
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO: Add bottom navigation bar.
    );
  }
}
