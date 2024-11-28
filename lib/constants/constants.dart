import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFA2D0F4);
  static const Color cardColor = Color(0xFF9ECAF5);
  static const Color iconColor = Colors.white;
  static const Color iconStarColor = Colors.amber;
  static const Color textColorPrimary = Colors.white;
  static const Color textColorSecondary = Colors.white70;
  static const Color textColorAccent = Colors.black87;
}

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColorPrimary,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textColorPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.textColorSecondary,
  );

  static const TextStyle accent = TextStyle(
    fontSize: 16,
    color: AppColors.textColorAccent,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textColorPrimary,
  );

  static const TextStyle cardSubtitle = TextStyle(
    fontSize: 14,
    color: AppColors.textColorSecondary,
  );
}

class AppPadding {
  static const EdgeInsets contentPadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardPadding = EdgeInsets.all(12.0);
  static const EdgeInsets innerPadding = EdgeInsets.all(8.0);
}

class AppConstants {
  static const double cardElevation = 4.0;
  static const double borderRadius = 10.0;
}
