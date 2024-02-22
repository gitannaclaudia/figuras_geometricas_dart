import 'dart:core';
import 'dart:io';
import 'dart:math';

import '../main.dart';

class Circulo implements CircleFigure {
  @override
  String figura = "Circulo";
  late String? raio;
  late double raioParse;

  @override
  area() => pi * pow(raioParse, 2);

  @override
  diametro() => 2 * (raioParse);

  Circulo() {
    print("Digite o valor do raio do círculo: ");
    raio = stdin.readLineSync();
    stdout.writeln();
    raioParse = double.parse(raio!);
  }
}