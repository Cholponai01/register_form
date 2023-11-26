import 'package:flutter/material.dart';
import 'package:register_form/config/config.dart';
import 'package:register_form/features/auth/presentation/page/registration/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
