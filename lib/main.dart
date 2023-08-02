// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';

void main() {
  // 1
  runApp(const FoodSocial());
}

class FoodSocial extends StatelessWidget {
  // 2
  const FoodSocial({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home Widget
    // 3
    return MaterialApp(
      // TODO: Add theme.
      title: 'Food Social',
      // 4
      home: Scaffold(
        // TODO: Style the title.
        appBar: AppBar(title: const Text('Food Social')),
        // TODO: Style the body text.
        body: const Center(child: Text("Let's get cooking 👩‍🍳"))
      ),
    );
  }
}
