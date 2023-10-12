import 'package:flutter/material.dart'; 
//A linha acima importa o material.dart que é uma biblioteca do flutter que inclui 
//uma ampla variedade de materias design widgets pré-definidos

void main() {
  //O método main é o ponto de entrada para o aplicativo Flutter
  //O método runApp() toma como argumento um widget e torna a raiz da árvore de widgets.
  runApp(MyApp());
}

//JMS é uma classe que estende StatelessWidget, o que significa que os dados aqui não mudam(São imutáveis).
//O método build retorna um widget MaterialApp, que é a estrutura de nível superior do app
//O Widget MaterialApp é configurado com um titulo, um theme e um widget home que é 
//uma instancia de MinhaHomePage().
class MyApp extends StatelessWidget{
  @override //Sub-Escrita no metodo
  Widget build (BuildContext context){
    return MaterialApp(title: 'Meu Aplicativo', theme: ThemeData(primarySwatch: Colors.blue),
    home: MinhaHomePage(),);
  }
}

class MinhaHomePage extends StatefulWidget {
  @override //Sub-Escrita no metodo
  _MinhaHomePageState createState() => _MinhaHomePageState();
}
  //MinhaHomePage é um StatefulWidget, oq ue significa que ele pode manter o estado mutável.
  //Ele retorna uma instancia de seu estado, _MinhaHomePageState.

class _MinhaHomePageState extends State<MinhaHomePage> {
  int _contador=0;

  //função sem retorno
  void _incrementarContador(){
    setState((){
      _contador++;
    });
  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('JMS Flutter'),
        ),
          body: Center(
            child: Column(
              children: <Widget>[
                Text('Você pressionou o botão: ',),
                Text('$_contador',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],)
        ),
          floatingActionButton: FloatingActionButton( 
          onPressed: _incrementarContador,
          tooltip: 'Incrementar',
          child: Icon(Icons.add),
          ),
  );
}
}
