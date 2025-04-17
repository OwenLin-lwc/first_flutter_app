import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Flutter App'), centerTitle: true),
        body: Center(child: Text('Hello World!')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button Pressed!');
          },
          child: Text('Click'),
        ),
      ),
    ),
  );
}
