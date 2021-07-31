import 'package:cusco_movil/src/pages/ajustes.dart';
import 'package:cusco_movil/src/pages/funcionamiento.dart';
import 'package:cusco_movil/src/pages/historial.dart';
import 'package:cusco_movil/src/pages/home.dart';
import 'package:cusco_movil/src/pages/login.dart';
import 'package:cusco_movil/src/pages/sobre_cusco.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryIconTheme: IconThemeData(
          color: Color.fromARGB(255, 19, 57, 121)
        )
      ),
      title: 'Cusco',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        'login': (_) => LoginPage(),
        'funcionamiento': (_) => FuncionamientoPage(),
        'sobrecusco': (_) => SobreCuscoPage(),
        'ajustes': (_) => AjustesPage(),
        'historial': (_) => HistorialPage(),
        '/': (_) => HomePage()
      },
    );
  }
}

