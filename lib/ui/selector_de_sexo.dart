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
  var cualEstaSeleccionada = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TarjetaConImagen(
          rutaImagen: 'assets/images/male.png',
          etiqueta: 'Hombre',
          estaSeleccionado: cualEstaSeleccionada == true,
          click: () {
            setState(() {
              cualEstaSeleccionada = true;
            });
          },
        ),
        TarjetaConImagen(
          rutaImagen: 'assets/images/female.png',
          etiqueta: 'Mujer',
          estaSeleccionado: cualEstaSeleccionada == false,
          click: () {
            setState(() {
              cualEstaSeleccionada = false;
            });
          },
        ),
      ],
    );
  }
}
