import 'package:flutter/material.dart';

class DisplayCalculadora extends StatelessWidget {
  double altura;
  String valor;
  double fonteSize;
  DisplayCalculadora(this.valor, this.altura, this.fonteSize);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: double.infinity,
        height: altura,
        color: Colors.black,
        child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              valor,
              style: TextStyle(color: Colors.white, fontSize: fonteSize),
            )),
      ),
    );
  }
}
