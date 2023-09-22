/*
Exercice 1

Créez une classe Rectangle qui représente un rectangle. La classe doit avoir les propriétés suivantes :

    l : la longueur du rectangle
    h : la hauteur du rectangle

La classe doit également avoir les méthodes suivantes :

    surface() : pour calculer la surface du rectangle
    perimetre() : pour calculer le périmètre du rectangle

Créez ensuite une instance de la classe Rectangle et utilisez les méthodes surface() 
et perimetre() pour imprimer la surface et le périmètre du rectangle.
 */

void main() {
  var resultat = new Rectangle(5, 3);
  print("Surface d'un rectangle : ${resultat.surface()}");
  print("Perimetre d'un rectangle : ${resultat.perimetre()}");
}

class Rectangle {
  int longueur;
  int hauteur;

  Rectangle(this.longueur, this.hauteur);

  int surface() {
    return longueur * hauteur;
  }

  int perimetre() {
    return (longueur + hauteur) * 2;
  }
}
