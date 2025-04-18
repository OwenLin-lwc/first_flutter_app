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
      // body: Container(
      //   // padding: EdgeInsets.all(20),
      //   // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   margin: EdgeInsets.all(30),
      //   color: Colors.grey[400],
      //   child: Text('Hello'),
      // ),
      body: Padding(padding: EdgeInsets.all(90), child: Text('Hello')),
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
