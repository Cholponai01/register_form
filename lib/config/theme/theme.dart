import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';

var theme = ThemeData(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      // tema
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    // im9 inn nomer
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
    // zabyli parol
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
  ),
);
