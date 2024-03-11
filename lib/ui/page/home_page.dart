import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valor = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: resetValor,
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(
                  value: valor,
                  up: sumdot1,
                  down: eliminardot1,
                ),
                W2(value: valor),
                W3(
                  value: valor,
                  up: sum1,
                  down: eliminar1,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  void sumdot1() {
    setState(() {
      // do something
      valor += 0.1;
      valor = double.parse(valor.toStringAsFixed(1));
    });
  }

  void eliminardot1() {
    setState(() {
      // do something
      valor -= 0.1;
      valor = double.parse(valor.toStringAsFixed(1));
    });
  }

  void sum1() {
    setState(() {
      // do something
      valor += 1;
      valor = double.parse(valor.toStringAsFixed(1));
    });
  }

  void eliminar1() {
    setState(() {
      // do something
      valor -= 1;
      valor = double.parse(valor.toStringAsFixed(1));
    });
  }

  void resetValor() {
    setState(() {
      valor = 0.0;
    });
  }
}
