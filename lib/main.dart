import "package:day_01/MyRoutes.dart";
import "package:day_01/pages/home_page.dart";
import "package:day_01/pages/login_page.dart";
import "package:day_01/pages/splash_screen.dart";
import "package:day_01/themes.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
