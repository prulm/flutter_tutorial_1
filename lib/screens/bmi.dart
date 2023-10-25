import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/screens/result.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double height = 0;
  double weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Height"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    height = (height - 1);
                  });
                },
                icon: Icon(Icons.remove),
              ),
              Text(height.toString()),
              IconButton(
                  onPressed: () {
                    setState(() {
                      height = height + 1;
                    });
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
          Text("Weight"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    weight = (weight - 1);
                  });
                },
                icon: Icon(Icons.remove),
              ),
              Text(weight.toString()),
              IconButton(
                onPressed: () {
                  setState(() {
                    weight = weight + 1;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(bmi: (weight/(height*height))),
                    ));
              },
              child: Text('Calculate'))
        ],
      ),
    );
  }
}
