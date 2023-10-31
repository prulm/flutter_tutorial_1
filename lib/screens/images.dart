import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/screens/spotify_layout.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1698551899401-bd5391406d6f?auto=format&fit=crop&q=80&w=464&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ElevatedButton(
            onPressed: () {
              print('what is up?');
            },
            child: Icon(Icons.whatshot_outlined, color: Colors.white),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              onPrimary: Colors.black,
              elevation: 5,
              fixedSize: Size(50, 50),
            ),
          ),
          Image.asset('assets/images/fashion.jpg'),
          ElevatedButton(
            onPressed: () {
              print('what is up?');
            },
            child: Icon(Icons.whatshot_outlined, color: Colors.white),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              onPrimary: Colors.black,
              elevation: 5,
              fixedSize: Size(50, 50),
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.pink),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Spotify()),
                );
              },
              icon: Icon(Icons.shop, color: Colors.pink),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.checkroom, color: Colors.pink),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.pink),
              style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.redAccent),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
