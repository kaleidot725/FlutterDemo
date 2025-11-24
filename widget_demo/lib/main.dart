import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Empty Screen')),
        body: Column(
          children: [
            AnimalView(text: 'mouse', color: Colors.yellow),
            AnimalView(text: 'lizard', color: Colors.red),
            Counter(),
          ],
        ),
      ),
    );
  }
}

class AnimalView extends StatelessWidget {
  const AnimalView({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
      height: 100,
      child: Center(child: Text(text, textDirection: TextDirection.ltr)),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _count++;
        });
      },
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        child: Center(child: Text('$_count', textDirection: TextDirection.ltr)),
      ),
    );
  }
}
