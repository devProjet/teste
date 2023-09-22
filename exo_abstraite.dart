/*
Exercice

Créez une classe abstraite Forme qui définit une méthode calculerSurface().

Créez deux classes concrètes qui héritent de la classe Forme :

    Une classe Rectangle qui calcule la surface d'un rectangle.
    Une classe Cercle qui calcule la surface d'un cercle.

Créez une fonction afficherSurface() qui prend une instance de la classe Forme en paramètre et imprime la surface de la forme.
 */

import 'dart:math';

void main() {
  //Création d'un instance pour afficher la surface d'un rectangle
  Rectangle rectangle = new Rectangle(longeur: 10, hauteur: 20);
  afficherSurface(rectangle);

  //Création d'un instance pour afficher la surface d'un cercle
  Cercle cercle = new Cercle(rayon: 10);
  afficherSurface(cercle);
}

abstract class Forme {
  double calculerSurface();
}

class Rectangle extends Forme {
  double? longeur;
  double? hauteur;
  Rectangle({this.longeur, this.hauteur});

  @override
  double calculerSurface() {
    return longeur! * hauteur!;
  }
}

class Cercle extends Forme {
  double? rayon;
  Cercle({this.rayon});
  @override
  double calculerSurface() {
    return pi * rayon! * rayon!;
  }
}

void afficherSurface(Forme forme) {
  print(forme.calculerSurface());
}
