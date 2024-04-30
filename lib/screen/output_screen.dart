import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String title;
  const OutputScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Member No. $title")),
    );
  }
}
