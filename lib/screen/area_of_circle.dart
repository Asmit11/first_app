import 'package:first_app_32a/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<AreaOfCircleScreen> {
  double? radius;
  double? result = 0;

  //Relationship
  //Loosley coupled
  AreaOfCircleModel? areaOfCircleModel;

  

  final gap = const SizedBox(
    height: 8,
  );

  // Create global key for form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'AREA OF CIRCLE',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Enter first no
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  hintText: 'Enter your radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your radius";
                  }
                  return null;
                },
              ),
              gap,
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        areaOfCircleModel = AreaOfCircleModel(radius: radius!);
                      }
                      result = areaOfCircleModel!.area();
                    });
                  }
                },
                child: const Text(
                  'Calculate',
                ),
              ),
              gap,
              Container(
                // color: Colors.amber,
                child: RichText(
                    text: TextSpan(
                        text: "A",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 30,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'rea of Circle is $result',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          )),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
