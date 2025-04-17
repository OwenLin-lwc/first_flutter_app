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
      body: Center(child: Image.asset('assets/space_1.avif')),
      // get the image from the internet
      // body: Center(
      //   child: Image.network(
      //     'https://media.istockphoto.com/id/1914472061/photo/andromeda-spiral-galaxy-on-a-starry-night.jpg?s=1024x1024&w=is&k=20&c=2SrvKbOtrrleHGhcc_e-erNXfUssVAOCS8A7R6YMCaM=',
      //   ),
      // ),
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
