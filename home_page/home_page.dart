import 'package:bytebank/home_page/botoes_design.dart';
import 'package:bytebank/home_page/display_design.dart';
import 'package:bytebank/home_page/espacamento.dart';
import "package:flutter/material.dart";

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String num1 = "";
  String num2 = "";
  String operacao = "";
  String displayTotal = "";
  String displayAtual = "0";
  bool displayCalculado = false;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 35.0, 14.0, 0),
              child: DisplayCalculadora(displayTotal, 50.0, 25.0)),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 14.0, 30.0),
              child: DisplayCalculadora(displayAtual, 70.0, 45.0)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        displayAtual = "0";
                        displayTotal = "";
                        operacao = "";
                      });
                    },
                    child: BotaoCalculadora("AC")),
                Espacamento(5.0, 90.0, Colors.black),
                BotaoCalculadora(""),
                Espacamento(5.0, 90.0, Colors.black),
                BotaoCalculadora(""),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        operacao = "dividir";
                        num1 = displayAtual;
                        displayAtual = "0";
                        displayTotal += " ÷ ";
                      });
                    },
                    child: BotaoCalculadora("÷")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        } else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "7";
                        displayTotal += "7";
                      });
                    },
                    child: BotaoCalculadora("7")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "8";
                        displayTotal += "8";
                      });
                    },
                    child: BotaoCalculadora("8")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "9";
                        displayTotal += "9";
                      });
                    },
                    child: BotaoCalculadora("9")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        operacao = "multiplicar";
                        num1 = displayAtual;
                        displayAtual = "0";
                        displayTotal += " x ";
                      });
                    },
                    child: BotaoCalculadora("x")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "4";
                        displayTotal += "4";
                      });
                    },
                    child: BotaoCalculadora("4")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "5";
                        displayTotal += "5";
                      });
                    },
                    child: BotaoCalculadora("5")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "6";
                        displayTotal += "6";
                      });
                    },
                    child: BotaoCalculadora("6")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        operacao = "subtrair";
                        num1 = displayAtual;
                        displayAtual = "0";
                        displayTotal += " - ";
                      });
                    },
                    child: BotaoCalculadora("-")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "1";
                        displayTotal += "1";
                      });
                    },
                    child: BotaoCalculadora("1")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "2";
                        displayTotal += "2";
                      });
                    },
                    child: BotaoCalculadora("2")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        }else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "3";
                        displayTotal += "3";
                      });
                    },
                    child: BotaoCalculadora("3")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        operacao = "somar";
                        num1 = displayAtual;
                        displayAtual = "0";
                        displayTotal += " + ";
                      });
                    },
                    child: BotaoCalculadora("+")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        displayAtual =
                            displayAtual.substring(0, displayAtual.length - 1);
                        displayTotal =
                            displayTotal.substring(0, displayTotal.length - 1);
                      });
                    },
                    child: BotaoCalculadora("DEL")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (displayAtual == "0") {
                          displayAtual = "";
                        } else if (displayCalculado) {
                          displayAtual = "";
                          displayTotal = "";
                          displayCalculado = !displayCalculado;
                        }
                        displayAtual += "0";
                        displayTotal += "0";
                      });
                    },
                    child: BotaoCalculadora("0")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        displayAtual += ".";
                        displayTotal += ".";
                      });
                    },
                    child: BotaoCalculadora(".")),
                Espacamento(5.0, 90.0, Colors.black),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        num2 = displayAtual;
                        displayAtual = calcular(num1, num2, operacao);
                        displayCalculado = !displayCalculado;
                      });
                    },
                    child: BotaoCalculadora("=")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String calcular(String num1, String num2, String operacao) {
  if (operacao == "somar") {
    double n1 = double.parse(num1);
    double n2 = double.parse(num2);
    double soma = n1 + n2;
    return "$soma";
  }
  if (operacao == "subtrair") {
    double n1 = double.parse(num1);
    double n2 = double.parse(num2);
    double sub = n1 - n2;
    return "$sub";
  }
  if (operacao == "multiplicar") {
    double n1 = double.parse(num1);
    double n2 = double.parse(num2);
    double multi = n1 * n2;
    return "$multi";
  }
  if (operacao == "dividir") {
    if (num2 != "0") {
      double n1 = double.parse(num1);
      double n2 = double.parse(num2);
      double dividir = n1 / n2;
      return "$dividir";
    }
  }
  return "erro";
}
