import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = new TextEditingController();
  var error = null;
  var isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.bottomCenter,
          width: 200,
          child: Image.asset('assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),]
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.g_mobiledata, color: Colors.black),
                  Text(
                    "Login with Google",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.white,
                alignment: Alignment.center,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Or Login with",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 16)),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Enter Email Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  ),
                  ),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: !isVisible,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 1,
                    ),
                  )),
              onChanged: (value) {
                if (value.length < 8) {
                  setState(() {
                    error = "Too short";
                  });
                } else if (value.length < 12) {
                  setState(() {
                    error = "Weak Password";
                  });
                } else {
                  setState(() {
                    error = "Strong";
                  });
                }
              },
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 25, 44),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: 200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
