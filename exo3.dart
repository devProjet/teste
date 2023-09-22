/*
Exercice 3

Créez une classe Cercle qui représente un cercle. La classe doit avoir les propriétés suivantes :

    rayon : le rayon du cercle

La classe doit également avoir les méthodes suivantes :

    surface() : pour calculer la surface du cercle
    perimetre() : pour calculer le périmètre du cercle

Créez ensuite une instance de la classe Cercle et utilisez les méthodes surface() 
et perimetre() pour imprimer la surface et le périmètre du cercle.
 */

import 'dart:math';

void main() {
  //une instance de la classe Cercle
  Cercle cercle = new Cercle(rayon: 10.0);
  print(cercle.surface());
  print(cercle.perimetre());
}

class Cercle {
  double? rayon;
  Cercle({this.rayon});

  //méthode surface
  double surface() {
    return pi * rayon! * rayon!;
  }

  //methode perimetre
  double perimetre() {
    return 2 * pi * rayon!;
  }
}
