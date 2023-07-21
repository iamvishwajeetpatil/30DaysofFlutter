import 'package:flutter/material.dart';
import 'package:flutter_application_day1/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen()
      },
    );
  }
}
