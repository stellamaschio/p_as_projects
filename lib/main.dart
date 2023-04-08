import 'package:flutter/material.dart';
import 'package:p_as_projects/screens/loginPage.dart';

void main() {
  runApp(const MyApp());
} //main

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.greenAccent,
        ),
      home: LoginPage(),
    );
  } //build
}//MyApp