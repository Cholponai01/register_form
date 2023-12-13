import 'package:flutter/material.dart';

class ExampleTestPage extends StatelessWidget {
  const ExampleTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Icon(Icons.bento, color: Colors.grey),
          Text("data"),
          SizedBox(
            height: 10,
            child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
