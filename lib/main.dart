import 'package:flutter/material.dart';

void main() {
  runApp(CounterPage());
}
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _counter=0;
  void _increaseCounter() {
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You clicked this many times",style: TextStyle(fontSize: 20),),
            Text(_counter.toString(),style: TextStyle(fontSize: 35),),
            ElevatedButton(
              onPressed: _increaseCounter,
              child: Text("Increase Counter"),
            )
          ],
        ),
      ),
    )

    );
  }
}
