// Gelin Eguinosa
// 2023

import 'dart:developer';
import 'package:flutter/material.dart';
import 'foodsocial_theme.dart';


class TrendsChip extends StatelessWidget {
  final String chipName;
  final bool allowDelete;

  const TrendsChip({
    super.key,
    required this.chipName,
    this.allowDelete = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        chipName,
        style: FoodSocialTheme.darkTextTheme.bodyText1,
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      onDeleted: allowDelete ? () {log('detele');} : null,
    );
  }
}
