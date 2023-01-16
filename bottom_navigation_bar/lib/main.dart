import 'package:bottom_navigation_bar/samplePages.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Bottom Navigation Bar',
        home: BottomMenu(),
      ),
    );

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int selected_item = 0;
  var pages_data = [Homepage(), Aboutpage(), Servicespage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bottom Navigation '),
      ),
      body: Center(child: pages_data[selected_item]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(
              icon: Icon(Icons.miscellaneous_services_rounded),
              label: 'Services')
        ],
        currentIndex: selected_item,
        onTap: (setvalue) {
          setState(
            () {
              selected_item = setvalue;
            },
          );
        },
      ),
    );
  }
}
