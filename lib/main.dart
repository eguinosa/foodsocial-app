// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';
import 'home.dart';
import 'foodsocial_theme.dart';

void main() {
  runApp(const FoodSocial());
}

class FoodSocial extends StatelessWidget {
  const FoodSocial({super.key});

  @override
  Widget build(BuildContext context) {
    // Create theme
    final theme = FoodSocialTheme.dark();

    // Apply Home Widget
    return MaterialApp(
      // Add theme.
      theme: theme,
      title: 'Food Social',
      home: const Home(),
    );
  }
}
