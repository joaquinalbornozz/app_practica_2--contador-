import 'package:flutter/material.dart';

class ContPage extends StatefulWidget {
  const ContPage({super.key, required this.title});

  final String title;

  @override
  State<ContPage> createState() => _ContPageState();
}

class _ContPageState extends State<ContPage> {
  int _counter = 0;
  List<int> resultados = [];

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

  void _agregarResultado() {
    setState(() {
      resultados.add(_counter);
    });
  }

  void _vaciar() {
    setState(() {
      resultados.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[600],
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        centerTitle: true,
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
            const Text('Resultados guardados:'),
            Text(resultados.isEmpty ? '\n' : '$resultados\n'),
            ElevatedButton(
                onPressed: _multimplicar,
                child: const Text('Multiplicar por 2')),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: _agregarResultado,
                child: const Text('Guardar resultado')),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: _vaciar,
                child: const Text('Vaciar resultados guardados'))
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
            onPressed: _cerear,
            tooltip: 'Cero',
            backgroundColor: Colors.lightBlue[600],
            child: const Icon(
              Icons.exposure_zero,
              color: Colors.white,
            )),
        const SizedBox(height: 5),
        FloatingActionButton(
            onPressed: _restar,
            tooltip: 'Decrementar',
            backgroundColor: Colors.lightBlue[600],
            child: const Icon(Icons.remove, color: Colors.white)),
        const SizedBox(height: 5),
        FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            backgroundColor: Colors.lightBlue[600],
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ],
    );
  }
}
