import 'package:flutter/material.dart';
import 'package:flutter_application_day1/screens/login_screen.dart';
import 'package:flutter_application_day1/utils/routes.dart';
import 'package:flutter_application_day1/widgets/thems.dart';
// import 'package:flutter_application_day1/screens/home_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginScreen()
      },
    );
  }
}
