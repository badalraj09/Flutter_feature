import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // gives package json.decode()

void main() => runApp(MaterialApp(home: MyAPI()));

class MyAPI extends StatefulWidget {
  const MyAPI({super.key});

  @override
  State<MyAPI> createState() => _MyAPIState();
}

class _MyAPIState extends State<MyAPI> {
  String getdata = "";
  var getList = [];
  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "http://91weblessons.com/demo/api/mobile/api2.php")); // converted string into uri by Uri.parse
    if (response.statusCode == 200) {
      setState(() {
        getdata = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Text('hello'),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
