/*
  Exercice 3 : Polymorphisme
  Créez une liste d'animaux de différentes classes et appelez une méthode commune à tous les animaux, 
  par exemple "manger()". Observez comment le polymorphisme permet à chaque animal d'exécuter sa propre 
  implémentation de la méthode "manger()".
 */

void main() {
  //Nourriture du chien
  var n_chien = new Chien("Boby", 4);
  n_chien.manger();

  //Nourriture du chat
  var n_chat = new Chat("Mimi", 5);
  n_chat.manger();

  //Nourriture du Rat
  var n_rat = new Rat("Bis", 9);
  n_rat.manger();
}

class Animal {
  String? nom;
  int? age;
  Animal(String nom, int age) {
    this.nom = nom;
    this.age = age;
  }

  //méthode pour savoir la nourriture de chaque animal
  void manger() {
    print("Savez-vous la nourriture du : ");
  }
}

class Chien extends Animal {
  Chien(String nom, int age) : super(nom, age);
  @override
  void manger() {
    super.manger();
    print("Chien est l'os des zébu!");
  }
}

class Chat extends Animal {
  Chat(String nom, int age) : super(nom, age);

  @override
  void manger() {
    super.manger();
    print("Chat est les poissons!");
  }
}

class Rat extends Animal {
  Rat(String nom, int age) : super(nom, age);

  @override
  void manger() {
    super.manger();
    print("Rat est les vetêments!");
  }
}
