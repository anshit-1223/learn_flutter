import "package:day_01/MyRoutes.dart";
import "package:day_01/pages/home_page.dart";
import "package:day_01/pages/login_page.dart";
import "package:day_01/pages/splash_screen.dart";
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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.lightBlueAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.black54),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),


      },
    );
  }
}
