import 'package:flutter/material.dart';
import 'package:navigatin_test/details.dart';

void main() => runApp(
      MaterialApp(
        title: 'Navigation Test',
        home: MyNavigation(),
      ),
    );

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Navigation Tutorial'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Here'),
          onPressed: (() {
            Navigator.push(
              context, // if you want to navigate to another page
              MaterialPageRoute(builder: (context) => MyPageDetails()),
            );
          }),
        ),
      ),
    );
  }
}
