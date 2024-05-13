import 'package:first_app_32a/model/items.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Item> lstItems = [
    Item(
      itemID: 1,
      itemName: 'Case',
      itemPrice: 100,
    ),
    Item(
      itemID: 2,
      itemName: 'Charger',
      itemPrice: 500,
    ),
    Item(
      itemID: 3,
      itemName: 'Phone',
      itemPrice: 30000,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.amber),
        border: TableBorder.all(color: Colors.black),
        columns: const [
          DataColumn(label: Center(child: Text("ItemID"))),
          DataColumn(label: Text("Item Name")),
          DataColumn(label: Text("Price")),
          DataColumn(label: Text("Actions")),
        ],
        rows: lstItems.map((item) {
          return DataRow(cells: [
            DataCell(Text(item.itemID.toString())),
            DataCell(Text(item.itemName)),
            DataCell(Text(item.itemPrice.toString())),
            const DataCell(
              Icon(Icons.delete),
            )
          ]);
        }).toList(),
      ),
    );
  }
}
