import 'package:calculadora_bmi/ui/selector_de_sexo.dart';
import 'package:calculadora_bmi/ui/tarjeta_con_slider.dart';
import 'package:calculadora_bmi/ui/tarjeta_de_mensaje.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  var alturaActual = 180;
  var pesoActual = 80;
  var indiceMasaCorporal = 0.0;
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
            titulo: 'Peso (KG) prueba',
            valorMinimo: 40,
            valorMaximo: 200,
            valorInicial: 80,
            elSliderCambia: (peso) {
              print('esto se ejecuta despues');
              pesoActual = peso;
            },
          ),
          TarjetaConSlider(
            titulo: 'Altura (cm)',
            valorMinimo: 110,
            valorMaximo: 250,
            valorInicial: 180,
            elSliderCambia: (altura) {
              print('esto se ejecuta despues');
              alturaActual = altura;
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF0067),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: Size.fromHeight(40),
            ),
            onPressed: () {
              setState(() {
                indiceMasaCorporal = _calcularIndiceMasaCorporal(
                    altura: alturaActual, peso: pesoActual);
              });
            },
            child: Text(
              'Calcular BMI',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TarjetaDeMensaje(imc: indiceMasaCorporal.toInt())
        ],
      ),
    );
  }

  double _calcularIndiceMasaCorporal({required int altura, required int peso}) {
    final alturaEnMetros = alturaActual / 100;
    return pesoActual / pow(alturaEnMetros, 2);
  }
}
