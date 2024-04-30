import 'package:first_app_32a/commonwidget/listtile_widget.dart';
import 'package:flutter/material.dart';

class ListtileScreen extends StatefulWidget {
  const ListtileScreen({super.key});

  @override
  State<ListtileScreen> createState() => _ListtileScreenState();
}

class _ListtileScreenState extends State<ListtileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'List Tile',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          elevation: 2,
        ),
        body: SingleChildScrollView(
          //singlechildscrollview for scrollable UI
          child: Column(
            children: [
              // For Loop
              for (int i = 1; i <= 100; i++) ...{
                if (i % 2 == 0) ...{
                  ListTileWidgetScreen(
                    index: i,
                    imageName: 'assets/images/kitten.jpg',
                  ),
                } else ...{
                  ListTileWidgetScreen(
                      index: i, imageName: 'assets/images/spider.png')
                }
              }
            ],
          ),
        ));
  }
}
