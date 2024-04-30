import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatefulWidget {
  const FlutterLayoutScreen({super.key});

  @override
  State<FlutterLayoutScreen> createState() => _FlutterLayoutScreenState();
}

class _FlutterLayoutScreenState extends State<FlutterLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout'),
      ),
      body: Container(
        height: 50,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[300],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.phone), Text('Call')],
            ),
            Column(
              children: [Icon(Icons.route), Text('Route')],
            ),
            Column(
              children: [Icon(Icons.share), Text('Share')],
            ),
          ],
        ),
      ),
    );
  }
}
