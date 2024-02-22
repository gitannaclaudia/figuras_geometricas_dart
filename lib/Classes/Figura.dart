import 'dart:core';
import 'dart:io';

import 'Circulo.dart';
import 'Retangulo.dart';
import 'Triangulo.dart';

class Figura {
  var list = [];

  Figura() {
    while (list.length < 4) {
      var figuras = [Circulo(), Retangulo(), Retangulo(), Triangulo()];
      for(var figura in figuras) {
        list.add(figura);
      }
    }

    stdout.writeln();
    double initialValue = 0;

    var totalArea = list.fold(initialValue, (total, figura) {
      var figure = figura.figura;
      var dimensions = figure == 'Circulo'
          ? 'raio=${figura.raio}'
          : figure == 'Retangulo'
          ? 'X=${figura.x} Y=${figura.y}'
          : 'face1=${figura.lado1} face2=${figura.lado2} face3=${figura.lado3}';
      figura.area() + figura.area();
      print("Criado $figure em $dimensions");
      print("Area: ${figura.area()}");
      figure == 'Circulo'
          ? print("Diametro: ${figura.diametro()}")
          : figure == 'Triangulo'
          ? print("Triangulo ${figura.getTipo()}")
          : print("${figura.isQuadrado()}");

      stdout.writeln();

      return total + figura.area();
    });

    print("Area total dos objetos: $totalArea");
  }
}