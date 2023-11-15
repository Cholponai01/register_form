import 'package:flutter/material.dart';
import 'package:register_form/config/config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Text(
            "Register Form",
            style: theme.textTheme.bodyLarge?.copyWith(color: AppColors.black),
          ),
        ));
  }
}
