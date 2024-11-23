import 'package:day_01/MyRoutes.dart';
import 'package:day_01/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";

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
              Text("Welcome, $name"),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Username", hintText: "Username"),
                onTap: () {
                  Text("Logged In");
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
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
                onChanged: (value) => password = value,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Text("Log In");
                  if (name != "" && password != "") {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  } else {
                    Fluttertoast.showToast(
                        msg: "Username or Password cannot be empty!!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: Text("LogIn"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
