import 'package:flutter/material.dart';
import 'models/quote.dart';
import 'widgets/quote_card.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken.', 'Oscar Wilde'),
    Quote(
      'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.',
      'Albert Einstein',
    ),
    Quote('So many books, so little time.', 'Frank Zappa'),
    Quote(
      'A room without books is like a body without a soul.',
      'Marcus Tullius Cicero',
    ),
    Quote(
      'You only live once, but if you do it right, once is enough.',
      'Mae West',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: quotes.map((quote) => QuoteCard(quote)).toList()),
    );
  }
}
