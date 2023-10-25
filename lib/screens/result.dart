import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bmi;
  const Result({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              autofocus: true,
              leading: Icon(Icons.dark_mode),
              title: Text("Dark Mode"),
              subtitle: Text("Turn dark mode on"),
            )
          ]
        )
      ),
      body: Center(
        child: Text("Your BMI is " + bmi.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
