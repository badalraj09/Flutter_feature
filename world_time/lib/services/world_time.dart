import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ''; //location name
  String time = ''; // the time in that location
  String flag = ''; //url to an asset flag icon
  String url = ''; //location url for api endpoint
  late bool isDayTime;

  WorldTime({required this.location, required this.flag, required this.url});
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //print(data);
      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);

      // print(timezone);
      // print(offset);

      // create date time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //   var ist_now = now.toLocal();
      //   print(ist_now.hour);
      //   print(ist_now.minute);
      //   print(ist_now.second);

      //set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now); // now.toString();
    } catch (e) {
      print('caught errorr: $e');
    }
  }
}
