// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';
import 'foodsocial_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = "Editor's Choice";
  final String title = "The Art of Dough";
  final String description = "Learn to make the perfect bread.";
  final String chef = "Mario Sotomayor";

  @override
  Widget build(BuildContext context) {

    return Center(
      // Card1 Decorate Container.
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 400,
          height: 515,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        // Add a stack of text.
        child: Stack(
          children: [
            Text(
              category,
              style: FoodSocialTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: FoodSocialTheme.darkTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FoodSocialTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FoodSocialTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
