import 'dart:core';
import 'dart:io';
import 'dart:math';

import '../main.dart';

class Triangulo implements TriangleFigure {
  @override
  String figura = "Triangulo";
  late String? lado1, lado2, lado3;
  String? tipo;

  getPerimetro() {
    return double.parse(lado1!) + double.parse(lado2!) + double.parse(lado3!);
  }

  @override
  area() {
    double p = (getPerimetro() / 2);
    return sqrt(p * (p - double.parse(lado1!)) * (p - double.parse(lado2!)) * (p - double.parse(lado3!)));
  }

  @override
  getTipo() {
    if (lado1 == lado2 && lado1 == lado3) {
      tipo = "equilátero";
    } else if ((lado1 == lado2) || (lado1 == lado3) || (lado2 == lado3)) {
      tipo = "isósceles";
    } else {
      tipo = "escaleno";
    }

    return tipo;
  }

  Triangulo() {
    print("Digite o valor do lado1 para um triangulo: ");
    lado1 = stdin.readLineSync();

    print("Digite o valor do lado2 para um triangulo: ");
    lado2 = stdin.readLineSync();

    print("Digite o valor do lado3 para um triangulo: ");
    lado3 = stdin.readLineSync();
    stdout.writeln();
  }
}