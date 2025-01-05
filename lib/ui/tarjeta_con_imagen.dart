import 'package:flutter/material.dart';

class TarjetaConImagen extends StatelessWidget {
  final String rutaImagen;
  final String etiqueta;

  const TarjetaConImagen({
    required this.rutaImagen,
    this.etiqueta = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('hola mundo');
        },
        child: Card(
          elevation: 0,
          color: Color(0xFF14193B),
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
