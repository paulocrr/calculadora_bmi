import 'package:calculadora_bmi/ui/selector_de_sexo.dart';
import 'package:calculadora_bmi/ui/tarjeta_con_slider.dart';
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
        children: [
          SelectorDeSexo(),
          TarjetaConSlider(
            titulo: 'Peso (KG)',
            valorMinimo: 40,
            valorMaximo: 200,
            valorInicial: 200,
          ),
          TarjetaConSlider(
            titulo: 'Altura (cm)',
            valorMinimo: 110,
            valorMaximo: 250,
            valorInicial: 180,
          ),
        ],
      ),
    );
  }
}
