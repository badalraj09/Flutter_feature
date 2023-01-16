import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: "Async",
      home: TestAsync(),
    ),
  );
}

ClickMeFun() {
  print('1');
  Func2();
  print('3');
}

Func2() async {
  await Future.delayed(const Duration(seconds: 10), () {
    // await badically pura func2 ko background me start kiya  tab tak
    //                                   // tab tak aage badh 3ko print kiya phir 2 ka time pura hua uske baad 4 ko kiya
    print('2');
  });
  print('4');
}

class TestAsync extends StatelessWidget {
  const TestAsync({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        centerTitle: true,
        title: Text('Async'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Click here"),
            onPressed: () {
              ClickMeFun();
            },
          ),
        ),
      ),
    );
  }
}
