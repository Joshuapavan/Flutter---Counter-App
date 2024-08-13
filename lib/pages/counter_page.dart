import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You pushed the Button, these many times"),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter();
              },
              child: const Text("Increment Counter"),
            ),
            ElevatedButton(
              onPressed: () {
                _decrementCounter();
              },
              child: const Text("Decrement Counter"),
            ),
            ElevatedButton(
              onPressed: () {
                _resetCounter();
              },
              child: const Text("Reset Counter"),
            )
          ],
        ),
      ),
    );
  }
}
