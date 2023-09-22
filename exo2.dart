/*
Exercice 2

Créez une classe Point qui représente un point. La classe doit avoir les propriétés suivantes :

    x : l'abscisse du point
    y : l'ordonnée du point

La classe doit également avoir les méthodes suivantes :

    distance() : pour calculer la distance entre deux points

Créez ensuite deux instances de la classe Point et utilisez la méthode distance() pour imprimer la distance 
entre les deux points.
 */

import 'dart:math';

void main() {
  // Crée deux instances de la classe Point
  Point point1 = Point(x: 10, y: 20);
  Point point2 = Point(x: 30, y: 40);

  // Imprime la distance entre les deux points
  print(point1.distance(point2)); // 50
}

class Point {
  double? x;
  double? y;
  Point({this.x, this.y});

  double distance(Point other) {
    return sqrt(
        (other.x! - x!) * (other.x! - x!) + (other.y! - y!) * (other.y! - y!));
  }
}
