import 'package:flutter/material.dart';
import 'package:secret_note/page/home_page.dart';
import 'package:secret_note/page/start_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FINAL PROJECT",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
