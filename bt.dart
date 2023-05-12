import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final Function() onPressed;

  const Botao(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(texto),
    );
  }
}
