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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(children: <Widget>[Text('hello '), Text('world')]),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.pinkAccent,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.amber,
            child: Text('three'),
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
