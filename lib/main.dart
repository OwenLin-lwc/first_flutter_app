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
      body: Row(
        children: <Widget>[
          Expanded(flex: 3, child: Image.asset('assets/space_1.avif')),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
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
