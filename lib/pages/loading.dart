import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get(
      Uri.parse(
        'https://www.timeapi.io/api/Time/current/zone?timeZone=Asia/Taipei',
      ),
    );
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['dateTime'];
    // print(datetime);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading'));
  }
}
