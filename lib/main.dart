import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsividade_page/pages/home/homepage.dart';

void main() {
  // runApp(MyApp());
  runApp(DevicePreview(builder: (_) => MyApp()));
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
      //
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      //
    );
  }
}
