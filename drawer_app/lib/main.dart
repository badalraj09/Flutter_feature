import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Drawer_App',
      home: DrawerPage(),
    ));

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Drawer_Page'),
        ),
        body: Center(
          child: Text('hey! welcome to my Home Page'),
        ));
  }
}
