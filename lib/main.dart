// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';
import 'foodsocial_theme.dart';

void main() {
  runApp(const FoodSocial());
}

class FoodSocial extends StatelessWidget {
  const FoodSocial({super.key});

  @override
  Widget build(BuildContext context) {
    // [Done] TODO: Create theme
    final theme = FoodSocialTheme.dark();
    // TODO: Apply Home Widget
    return MaterialApp(
      // [Done] TODO: Add theme.
      theme: theme,
      title: 'Food Social',
      home: Scaffold(
        // [Done] TODO: Style the title.
        appBar: AppBar(
          title: Text(
            'Food Social',
            style: theme.textTheme.headline6,
          ),
        ),
        // [Done] TODO: Style the body text.
        body: Center(
          child: Text(
            "Let's get cooking 👩‍🍳",
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
