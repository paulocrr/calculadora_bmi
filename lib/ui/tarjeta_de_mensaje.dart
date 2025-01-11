import 'package:flutter/material.dart';

class TarjetaDeMensaje extends StatelessWidget {
  final int imc;
  const TarjetaDeMensaje({required this.imc, super.key});

  @override
  Widget build(BuildContext context) {
    var detalleMasaCorporal = '';
    var color = Colors.red;

    if (imc < 18) {
      detalleMasaCorporal = 'Su peso es insuficiente';
      color = Colors.blue;
    } else if (imc >= 18 && imc <= 25) {
      detalleMasaCorporal = 'Su peso esta en un rango saludable';
      color = Colors.green;
    } else if (imc > 25 && imc <= 30) {
      detalleMasaCorporal = 'Se encuentra en sobrepeso';
      color = Colors.purple;
    } else if (imc > 30) {
      detalleMasaCorporal = 'Se encuentra en obesidad';
      color = Colors.red;
    }

    return Row(
      children: [
        Expanded(
          child: Card(
            color: Color(0xFF14193B),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Su indice de masa corporal es $imc',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    detalleMasaCorporal,
                    style: TextStyle(color: color),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
