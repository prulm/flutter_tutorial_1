import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/screens/bmi.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  dynamic number_of_containers = 0;
  List<Widget> containerBuilder(BuildContext context, List<dynamic> colors,
      List<dynamic> children, List<double> wid, List<double> hei) {
    List<Widget> containers = [];

    for (int i = 0; i < colors.length; i++) {
      Widget kontainer = Container(
        margin: EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height * hei[i],
        width: MediaQuery.of(context).size.width * wid[i],
        child: children[i],
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: colors[i],
        ),
      );
      containers.add(kontainer);
      number_of_containers++;
    }
    return containers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: containerBuilder(
                  context,
                  [Colors.green, Color.fromARGB(255, 254, 87, 34)],
                  [
                    Icon(
                      Icons.widgets,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ],
                  [.45, .45],
                  [.3, .3],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: containerBuilder(context, [
                      Colors.blue
                    ], [
                      Icon(
                        Icons.wifi,
                        color: Colors.white,
                      )
                    ], [
                      .48
                    ], [
                      .13
                    ]),
                  ),
                  Row(
                    children: [
                      Column(
                        children: containerBuilder(
                          context,
                          [Colors.amber, Colors.red],
                          [
                            Icon(
                              Icons.web_asset,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.bluetooth,
                              color: Colors.white,
                            ),
                          ],
                          [.225, .225],
                          [.35, .1],
                        ),
                      ),
                      Column(
                        children: containerBuilder(
                          context,
                          [Colors.brown, Colors.blue[900]],
                          [
                            Icon(
                              Icons.map,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.hotel,
                              color: Colors.white,
                            ),
                          ],
                          [.225, .225],
                          [.1, .35],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: containerBuilder(context, [
              Colors.pink,
              Colors.purple
            ], [
              Icon(Icons.battery_alert, color: Colors.white),
              Icon(Icons.tv, color: Colors.white)
            ], [
              .71,
              .225
            ], [
              .1,
              .1
            ]),
          ),
          Row(
            children: containerBuilder(
              context,
              [Colors.blue],
              [Icon(Icons.radio, color: Colors.white)],
              [.965],
              [.1],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.pink),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BMI()));
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.pink,
                )),
          ],
        ),
      ],
    );
  }
}
