//Importando os pacotes necessários
import 'package:flutter/material.dart';
import 'dart:ui';

//Declaração do método princi´pal
void main() => runApp(CaculadoraApp());

//Definindo o widget principal do aplicativo
class CaculadoraApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CaculadoraHomePage(),
    );
  }
}

//Definindo o widget da página inicial
class CaculadoraHomePage extends StatefulWidget{
  @override
  _CalculadoraHomePageState createState() => _CalculadoraHomePageState();
}

class _CalculadoraHomePageState extends State<CaculadoraHomePage>{
  //Declarando variaveis para armazenar os números e resultados
  double num1 = 0;
  double num2 = 0;
  double resultado =0;

  //Controladores para campo de texto
  //Final: esta palavra-chave é usada para declara uma variavel que
  //só pode ser atribuida uma vez. No contexto do Flutter, utilizar final
  //significa que o controlador de texto será atribuido na criação da intância da classe do widget e mudará durante o ciclo de vida
  final TextEditingController t1 =TextEditingController(text: "");
  final TextEditingController t2 =TextEditingController(text: "");

  //Função para somar números
  void somar(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  //Função para subtrair
  void subtrair (){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  //Função para multiplicar
  void multiplicar (){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  //Função para dividir
  void dividir (){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              //Campo para o primeiro numero
              TextField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Digite o primeiro número"),
              ),
              SizedBox(height: 20),
              //Campo para o segundo numero
              TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Digite o segundo número"),
              ),
              SizedBox(height: 20),
              //Exibindo os resultados
              Text(
                "Resultado: $resultado",
                style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              //Botão para somar
              ElevatedButton(
                onPressed: somar,
                 child: Text('Somar'),
                 ),

                 SizedBox(height: 20),
              //Botão para subtrair
              ElevatedButton(
                onPressed: subtrair,
                 child: Text('Subtrair'),
                 ),

                  SizedBox(height: 20),
              //Botão para multiplicar
              ElevatedButton(
                onPressed: multiplicar,
                 child: Text('Multiplicar'),
                 ),

                  SizedBox(height: 20),
              //Botão para dividir
              ElevatedButton(
                onPressed: dividir,
                 child: Text('dividir'),
                 ),
            ],
          ),
        ),
      );
    }

}