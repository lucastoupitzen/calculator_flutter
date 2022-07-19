import "package:flutter/material.dart";

class BotaoCalculadora extends StatelessWidget {
  String valor;
  BotaoCalculadora(this.valor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 90,
      color: Colors.green,
      child: Center(
        child: Text(
          valor,
          style: TextStyle(color: Colors.white, fontSize: 45.0),
        ),
      ),
    );
  }
}
