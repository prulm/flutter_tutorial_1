import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child: Image.network('https://images.unsplash.com/photo-1698551899401-bd5391406d6f?auto=format&fit=crop&q=80&w=464&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          child: Image.asset('assets/images/fashion.jpg'),
      ),
    );
  }
}