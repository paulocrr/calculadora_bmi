import 'package:calculadora_bmi/ui/tarjeta_con_imagen.dart';
import 'package:flutter/material.dart';

class SelectorDeSexo extends StatefulWidget {
  const SelectorDeSexo({
    super.key,
  });

  @override
  State<SelectorDeSexo> createState() => _SelectorDeSexoState();
}

class _SelectorDeSexoState extends State<SelectorDeSexo> {
  void presionar(String texto) {
    print('toco el widget' + texto);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TarjetaConImagen(
          rutaImagen: 'assets/images/male.png',
          etiqueta: 'Hombre',
        ),
        TarjetaConImagen(
          rutaImagen: 'assets/images/female.png',
          etiqueta: 'Mujer',
        ),
      ],
    );
  }
}
