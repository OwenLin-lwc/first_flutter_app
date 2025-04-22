import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  late String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for API endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(
        Uri.parse('https://www.timeapi.io/api/Time/current/zone?timeZone=$url'),
      );
      Map data = jsonDecode(response.body);
      print(data['dateTime']);

      // get properties from data and set the time property
      time = DateFormat.jm().format(DateTime.parse(data['dateTime']));
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}
