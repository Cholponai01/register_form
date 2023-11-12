import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';

var theme = ThemeData(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: AppColors.blue,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
  ),
);
