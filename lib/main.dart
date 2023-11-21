import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor:const Color.fromARGB(255, 240, 254, 247),
        inputDecorationTheme:  InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          )


        ),
      ),
      home: const loginscreen(),
    );
  }
}

