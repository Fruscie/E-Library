
import 'package:e_library/UI/Pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E - Library',
      theme: ThemeData(
        fontFamily: 'Amiri',
      ),
      home: LoginPage(),
      // home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
