import 'package:flutter/material.dart';
import 'Views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
