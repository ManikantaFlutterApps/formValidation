import 'package:flutter/material.dart';

import 'RegisterScreen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: "Register Screen Application",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)),
      home: const RegisterScreen(),
    );
  }
}