import 'package:flutter/material.dart';
import 'package:location_app/locationpage.dart';
import 'package:location_app/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: locationpage(),
    );
  }
}
