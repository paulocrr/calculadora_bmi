import 'package:flutter/material.dart';

class TarjetaConSlider extends StatefulWidget {
  final String titulo;
  final int valorMinimo;
  final int valorMaximo;
  final int valorInicial;
  final void Function(int) elSliderCambia;

  const TarjetaConSlider({
    required this.titulo,
    required this.valorMinimo,
    required this.valorMaximo,
    required this.valorInicial,
    required this.elSliderCambia,
    super.key,
  });

  @override
  State<TarjetaConSlider> createState() => _TarjetaConSliderState();
}

class _TarjetaConSliderState extends State<TarjetaConSlider> {
  late double valorActual;

  @override
  void initState() {
    valorActual = widget.valorInicial.toDouble();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF14193B),
      child: Column(
        children: [
          Text(
            widget.titulo,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            valorActual.toStringAsFixed(0),
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          Slider(
            min: widget.valorMinimo.toDouble(),
            max: widget.valorMaximo.toDouble(),
            thumbColor: Color(0xFFFF0067),
            activeColor: Colors.white,
            value: valorActual,
            onChanged: (nuevoValor) {
              print('esto se ejecuta primero 1');
              setState(() {
                valorActual = nuevoValor;
                widget.elSliderCambia(valorActual.toInt());
              });
            },
          ),
        ],
      ),
    );
  }
}
