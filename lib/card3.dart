// Gelin Eguinosa
// 2023

import 'dart:developer';
import 'package:flutter/material.dart';
import 'foodsocial_theme.dart';
import 'trends_chip.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 400,
          height: 515,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: FoodSocialTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                  // Add Center widget with Chip widget children.
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: const [
                        TrendsChip(chipName: 'Healthy', allowDelete: true),
                        TrendsChip(chipName: 'Vegan', allowDelete: true),
                        TrendsChip(chipName: 'Carrots', allowDelete: false),
                        TrendsChip(chipName: 'Greens'),
                        TrendsChip(chipName: 'Wheat'),
                        TrendsChip(chipName: 'Pescatarian',),
                        TrendsChip(chipName: 'Mint',),
                        TrendsChip(chipName: 'Lemongrass',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
