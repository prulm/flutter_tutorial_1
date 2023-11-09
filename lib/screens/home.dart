import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/screens/landing.dart';
import 'package:flutter_tutorial_1/screens/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  List<Widget> box(BuildContext context, amount, wid, hei) {
    List<Widget> containers = [];
    for (int i = 0; i < amount; i++) {
      Widget kontainer = Container(
        height: MediaQuery.of(context).size.height * hei,
        width: MediaQuery.of(context).size.width * wid,
        color: Colors.brown[300],
      );
      containers.add(kontainer);
    }
    return containers;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> base = box(context, 3, .22, .22);
    base.add(OutlinedButton(
        onPressed: () {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => LoginScreen())
              );
        },
        child: Text('Click')));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // children: rows(context, [["spaceBetween", 3, .32, .3], ["spaceEvenly", 2, .46, .22]]),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: box(context, 3, .32, .22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: box(context, 2, .46, .22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: base,
          ),
        ],
      ),
    );
  }
}
