import 'dart:core';

import 'Classes/Figura.dart';

abstract class Figure {
  double area();
  late String figura;
}

abstract class CircleFigure extends Figure {
  double? diametro();
}

abstract class SquareFigure extends Figure {
  isQuadrado();
}

abstract class TriangleFigure extends Figure {
  getTipo();
}

void main(){
  Figura();
}
