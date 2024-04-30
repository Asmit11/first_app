import 'package:first_app_32a/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidgetScreen extends StatelessWidget {
  const ListTileWidgetScreen(
      {required this.index, required this.imageName, super.key});

  final int index;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageName),
      ),
      title: Text("Member No. $index"),
      subtitle: const Text("Kathmandu, Nepal"),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutputScreen(title: "$index");
        }));
      },
    );
  }
}
