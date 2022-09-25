// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projekt_1/RegisterPage.dart';
import 'login_page.dart';
import 'package:projekt_1/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/profilePage':(_) => profile_page(),
        'RgP':(_) => RegisterPage(),

      },
    );
  }
}
