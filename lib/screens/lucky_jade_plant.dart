import 'package:flutter/material.dart';

class LuckyJade extends StatelessWidget {
  const LuckyJade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.network('https://images.unsplash.com/photo-1485955900006-10f4d324d411?auto=format&fit=crop&q=80&w=1472&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          Padding(
            padding: const EdgeInsets.only(right: 150.0),
            child: Column(
              children: [
                Text('Lucky-jade-plant',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.0,
                ),),
                SizedBox(height: 10,),
                Text('Plants make your life minimal and happy\nlove the plants more and enjoy life.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 12,
                ),)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width * .8,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.height, color: Colors.white),
                        Text('Height', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                        Text('30cm - 40cm', style: TextStyle(fontSize: 10.0, color: Colors.white,),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.device_thermostat, color: Colors.white),
                        Text('Temperature', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                        Text('20°C to 25°C', style: TextStyle(fontSize: 10.0, color: Colors.white,),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.compost, color: Colors.white),
                        Text('Pot', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                        Text('Ciramic Pot', style: TextStyle(fontSize: 10.0, color: Colors.white,),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.compost, color: Colors.white),
                        Text('Total Price', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                        Text('\$12.99', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),)
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Cart"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[800],
                        padding: EdgeInsets.all(25.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
