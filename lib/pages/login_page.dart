import 'package:day_01/MyRoutes.dart';
import 'package:day_01/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/login_image.png"),
              Text("Welcome, User"),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Username", hintText: "Username"),
                onTap: () {
                  Text("Logged In");
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  hintText: "Password",
                ),
                obscureText: true,
                onTap: () {
                  Text("Password");
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Text("Log In");
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("LOG IN"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
