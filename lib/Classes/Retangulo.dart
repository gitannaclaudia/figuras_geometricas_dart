import 'dart:core';
import 'dart:io';

import '../main.dart';

class Retangulo implements SquareFigure {
  @override
  String figura = "Retangulo";
  late String? x;
  late String? y;

  @override
  area() => double.parse(x!) * double.parse(y!);
  @override
  isQuadrado() => print(x == y ? "É um quadrado!" : "Não é um quadrado!");

  Retangulo() {
    print("Digite uma altura para um retangulo: ");
    x = stdin.readLineSync();

    print("Digite o comprimento para um retangulo: ");
    y = stdin.readLineSync();
    stdout.writeln();
  }

}