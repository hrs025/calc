import 'package:flutter/material.dart';
import 'package:numeric_system/home.dart';


void main() {
  runApp(
      Numeric()
  );
}

class Numeric extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Home()
      ),
    );
  }

}

