import 'package:flutter/material.dart';
import 'package:register_form/presentation/page/credential/sign_in_page.dart';
import 'package:register_form/presentation/page/credential/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
