import 'package:flutter/material.dart';
import 'package:first_flutter_app/main.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text(
            '${appState.counter}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.decrementCounter();
                },
                icon: Icon(Icons.remove),
                label: Text('1'),
              ),
              SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {
                  appState.incrementCounter();
                },
                icon: Icon(Icons.add),
                label: Text('1'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
