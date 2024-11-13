import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
    children:[
      Image.asset("assets/images/login_image.png"),
      Text("Login Page"),
      TextField(),
        ]
    )
  }
}
