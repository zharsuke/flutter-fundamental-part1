import 'package:flutter/material.dart';
import 'dialog_widget.dart';
import 'input_widget.dart';
import 'date_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            const DialogWidget(),
            const SizedBox(height: 20),
            const InputWidget(),
            const SizedBox(height: 20),
            const DateWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
