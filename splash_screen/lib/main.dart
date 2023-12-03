// importar os pacotes necessários


import 'package:flutter/material.dart';
//importar a pagina do menu
import 'menu_screen.dart';

// define o método principal
void main() => runApp(AgendaEscolar());

//define o widget principal

class AgendaEscolar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda Escolar',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

//definir widget

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // initState é um método que é chamado quando o estado do widget é inicialmente criado.
  // É um bom lugar para iniciar animações ou a lógica de carregamento que precisa acontecer apenas uma vez.
  //
  // super.initState() chama a implementação original do método initState da classe base State. Isso é necessário para garantir que qualquer lógica de iniciação
  // da superclasse seja executada

  Future<void> _navigateToHome() async {
    // Você pode realizar qualquer carregamento inicial aqui, se necessário
    await Future.delayed(Duration(milliseconds: 1500), () {});
    // Após 1.5 segundos, vá para a tela do menu
    Navigator.pushReplacement(
        context as BuildContext, MaterialPageRoute(builder: (context) => MenuScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: FlutterLogo(size: 200),
   );
  }
}
