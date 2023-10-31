import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/screens/images.dart';

class Result extends StatelessWidget {
  final bmi;
  const Result({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        actions: [
          IconButton(icon: Icon(Icons.save, color: Colors.white), onPressed: () {},)
        ],
      ),
      drawer: Drawer(
          child: ListView(children: [
        ListTile(
          autofocus: true,
          leading: Icon(Icons.dark_mode),
          title: Text("Dark Mode"),
          subtitle: Text("Turn dark mode on"),
        )
      ])),
      body: Center(
        child: Text(
          "Your BMI is " + bmi.toString(),
          style: TextStyle(
            color: bmi > 17 && bmi < 25 ? Colors.green : Colors.red,
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.red),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.green),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Images(),
                    ));
              },
            ),
          ],
        )
      ],
    );
  }
}
