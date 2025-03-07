import 'package:calculadora_bmi/pagina_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora BMI',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: PaginaPrincipal(),
    );
  }
}
