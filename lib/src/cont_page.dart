import 'package:flutter/material.dart';

class ContPage extends StatefulWidget {
  const ContPage({super.key, required this.title});

  final String title;

  @override
  State<ContPage> createState() => _ContPageState();
}

class _ContPageState extends State<ContPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _restar() {
    setState(() {
      _counter--;
    });
  }

  void _multimplicar() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  void _cerear() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de clicks :'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: _multimplicar,
                child: const Text('Multiplicar por 2'))
          ],
        ),
      ),
      floatingActionButton: _botones(),
    );
  }

  Widget _botones() {
    return Column(
      children: <Widget>[
        const Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _restar,
            tooltip: 'Decrementar',
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.remove)),
        const SizedBox(width: 30.0),
        FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.add)),
        const SizedBox(width: 30.0),
        FloatingActionButton(
            onPressed: _cerear,
            tooltip: 'Cero',
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.exposure_zero)),
      ],
    );
  }
}
