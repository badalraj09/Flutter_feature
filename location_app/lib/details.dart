import 'package:flutter/material.dart';
import 'package:location_app/main.dart';

class details_page extends StatelessWidget {
  const details_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 194, 86, 122),
          title: Text('World Time'),
        ),
        body: Container(
          child: Image.network(
              "https://www.wkbn.com/wp-content/uploads/sites/48/2022/11/AdobeStock_113906685.jpg?w=876&h=493&crop=1"),
        ));
  }
}
