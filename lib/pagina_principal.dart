import 'package:calculadora_bmi/ui/selector_de_sexo.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF091032),
      appBar: AppBar(
        backgroundColor: Color(0xFF091032),
        title: Text(
          'Calculadora BMI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [SelectorDeSexo()],
      ),
    );
  }
}
