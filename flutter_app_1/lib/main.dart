// a simple form  app
import "package:flutter/material.dart";

void main() => runApp(
      MaterialApp(
//        title: "Simple Form",
        home: SimpleForm(),
      ),
    );

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  String name = ""; //  change hote rahega
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Simple Form'),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userName) {
                setState(() {
                  name = userName;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Name is $name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
