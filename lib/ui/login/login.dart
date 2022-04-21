import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: heights * 0.05,
            ),
            Text(
              "EMPROGO USA",
              style: TextStyle(height: 20),
            ),
            SizedBox(
              height: heights * 0.05,
            ),
            Text("Welcome Back"),
            SizedBox(
              height: 10,
            ),
            Text("Sign in to continue"),
            SizedBox()
          ],
        ),
      )),
    );
  }
}
