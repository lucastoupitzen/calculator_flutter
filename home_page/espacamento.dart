import 'package:flutter/material.dart';

class Espacamento extends StatelessWidget {
  double comprimento;
  double altura;
  Color cor;

  Espacamento(this.comprimento, this.altura, this.cor);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: comprimento,
      height: altura,
      color: cor,
    );
  }
}
