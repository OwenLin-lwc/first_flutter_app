import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Owen';
    });

    String bio = await Future.delayed(const Duration(seconds: 3), () {
      return 'web developer';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('initState() called');
  }

  @override
  Widget build(BuildContext context) {
    print('build() called');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text('Counter: $counter'),
      ),
    );
  }
}
