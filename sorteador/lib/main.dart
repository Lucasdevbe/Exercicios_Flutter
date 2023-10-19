import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(sorteador());
}

class sorteador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sorteador de numero',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SorteadorHomePage(),
    );
  }
}

class SorteadorHomePage extends StatefulWidget {
  @override
  _SorteioHomePage CreateStates() => _SorteioHomePage();
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _SorteioHomePage extends State<SorteadorHomePage> {
  int _numerosSorteado = 0;

  void _sortearnumeros() {
    setState(() {
      int _numerosSorteado = Random().nextInt(100) + 1; // numeros de 1 até 100
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorteador de numeros'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$_numerosSorteado',
            style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
              onPressed: _sortearnumeros, child: Text('sortear numero'))
        ],
      )),
    );
  }
}
