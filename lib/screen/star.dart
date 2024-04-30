import 'package:flutter/material.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({super.key});

  @override
  State<StarScreen> createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Star"),
        ),
        body: Container(
          // height: double.infinity,
          color: Colors.amber,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star),
              Spacer(),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
        ));
  }
}
