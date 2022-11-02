import 'package:flutter/material.dart';
import './homepage.dart';

main() => runApp(Getkeys());

class Getkeys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: HomePage(),
    );
  }
}
