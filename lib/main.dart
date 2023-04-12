import 'package:flutter/material.dart';

import 'view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electric Car Rental',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData()
      //implement animated splash screen
      home: HomePage(),
    );
  }
}
