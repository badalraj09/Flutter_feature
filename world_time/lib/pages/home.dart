import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments
            as Map; // her that value is passed
    print(data);
    // set background
    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color? bgcolour =
        data['isDayTime'] ? Colors.blue : Color.fromARGB(255, 45, 50, 92);
    return Scaffold(
      backgroundColor: bgcolour,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 280.0, 0, 0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                      onPressed: () async {
                        dynamic result =
                            await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = result;
                        });
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Color.fromARGB(255, 200, 86, 78),
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.5,
                            color: Color.fromARGB(255, 209, 79, 79)),
                      )),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                            fontSize: 28.0,
                            letterSpacing: 2.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 49.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
