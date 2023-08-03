// Gelin Eguinosa
// 2023

import 'package:flutter/material.dart';
import 'foodsocial_theme.dart';
import 'circle_image.dart';


class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    // Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // Add alignment.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FoodSocialTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FoodSocialTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          // Add IconButton.
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
