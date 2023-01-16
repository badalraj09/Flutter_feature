import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_app/details.dart';
import 'package:location_app/main.dart';

class locationpage extends StatefulWidget {
  const locationpage({super.key});

  @override
  State<locationpage> createState() => _locationpageState();
}

class _locationpageState extends State<locationpage> {
  void getCurrentPosition() async {
    // Permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('Permissions not given');
      LocationPermission asked = await Geolocator.requestPermission();
    } else {
      // if postion is granrt
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print('Longitide' + currentPosition.longitude.toString());
      print("Latitude: " + currentPosition.latitude.toString());
      print(currentPosition.altitude.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 86, 122),
        title: Text('Location Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.red),
                    backgroundColor: Color.fromARGB(255, 152, 186, 213)),
                onPressed: () {
                  getCurrentPosition();
                },
                child: Text('Click Here for Position'),
              ),
            ),
          ),
          Container(
            child: Text("Details are displayed in debug console"),
          ),
          SizedBox(
            height: 400,
          ),
          ElevatedButton(
            child: Text('Next Page'),
            onPressed: (() {
              Navigator.push(
                context, // if you want to navigate to another page
                MaterialPageRoute(builder: (context) => details_page()),
              );
            }),
          ),
        ],
      ),
    );
  }
}
