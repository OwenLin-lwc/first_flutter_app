import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        // child: Icon(Icons.airport_shuttle, color: Colors.lightBlue, size: 50),
        // child: ElevatedButton.icon(
        //   onPressed: () {
        //     print('Button Pressed!');
        //   },
        //   style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
        //   label: Text('Click Me'),
        //   icon: Icon(Icons.mail, color: Colors.amber),
        // ),
        child: IconButton(
          onPressed: () {
            print('Button Pressed!');
          },
          icon: Icon(Icons.mail, color: Colors.amber),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button Pressed!');
        },
        backgroundColor: Colors.red[600],
        child: Text('Click'),
      ),
    );
  }
}
