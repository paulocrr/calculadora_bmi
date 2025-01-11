import 'package:flutter/material.dart';

class TarjetaConImagen extends StatelessWidget {
  final String rutaImagen;
  final String etiqueta;
  final bool estaSeleccionado;
  final void Function() click;

  const TarjetaConImagen({
    required this.rutaImagen,
    required this.click,
    this.etiqueta = '',
    this.estaSeleccionado = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          click();
        },
        child: Card(
          elevation: 0,
          color: estaSeleccionado ? Color(0xFFFF0067) : Color(0xFF14193B),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              spacing: 8,
              children: [
                Image.asset(rutaImagen),
                Text(
                  etiqueta,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
