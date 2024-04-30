import 'package:first_app_32a/commonwidget/my_snackbar.dart';
import 'package:flutter/material.dart';

import '../commonwidget/my_button.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  _showSnackbar() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              // height: 200,
              width: double.infinity,
              color: Colors.pinkAccent,
              child: Center(
                  child: MyButton(
                onPressed: () {
                  mySnackBar(message: "Button1", context: context);
                },
                text: 'Click',
              )),
            ),
          ),
          Expanded(
            child: Container(
              // height: 200,
              width: double.infinity,
              color: Colors.black,
              child: Center(
                  child: MyButton(
                onPressed: () {
                  mySnackBar(
                      message: "Button2", context: context, color: Colors.red);
                },
                text: 'Click',
              )),
            ),
          ),
        ],
      )),
    );
  }
}
