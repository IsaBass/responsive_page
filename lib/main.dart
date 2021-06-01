import 'package:flutter/material.dart';
import 'package:responsividade_page/pages/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
          // primarySwatch: Colors.blue,

          ),
      home: MyHomePage(),
    );
  }
}
