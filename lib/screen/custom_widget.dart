import 'package:first_app_32a/commonwidget/my_button.dart';
import 'package:first_app_32a/commonwidget/my_textformfield.dart';
import 'package:first_app_32a/model/arithemetic_model.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatefulWidget {
  const CustomWidgetScreen({super.key});

  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

ArithmeticModel? arithmeticModel;

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  int? first;
  int? second;
  int? result = 0;
  // String? address;
  // String? result;
  final formKey = GlobalKey<FormState>();
  final gap = const SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget Screen"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: "Enter first Name"),
            gap,
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: "Enter second Name"),
            gap,
            MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        // studentModel = StudentModel(
                        //     fname: first!, lname: second!, address: address!);
                        arithmeticModel =
                            ArithmeticModel(first: first!, second: second!);
                      }
                      result = arithmeticModel!.add();
                    });
                    // result = studentModel!.save();
                  }
                },
                text: "Save"),
            gap,
            // gap,
            // ElevatedButton(
            //   onPressed: () {
            //     if (formKey.currentState!.validate()) {
            //       setState(() {
            //         {
            //           // studentModel = StudentModel(
            //           //     fname: first!, lname: second!, address: address!);
            //         }
            //         // result = studentModel!.save();
            //       });
            //     }
            //   },
            //   child: const Text('Save'),
            // ),
            // Text("$result")
            Center(
              child: Text(
                "Sum of first and second number: $result",
                style: const TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
