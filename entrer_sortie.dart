/*

Excercice 1 : Création d'une classe
Créer une classe "Animal" avec des propriétés telles que "nom" et "age". 
Ajoutez une méthode pour afficher ces informations. 
Ensuite, créez des objets de differentes classes d'animaux (par exemple, chien, chat, Oiseau)
qui héritent de la classe "Animal" et affichez leurs caractéristiques spécifiques.

Exercice 2 : Héritage et méthodes
Ajoutez des méthodes spécifiques à chaque classe d'animal, 
telle que "crier()" pour les chiens, "miauler()" pour les chats, et "chanter()" pour les oiseaux.
Utilisez l'héritage pour hériter des méthodes de la classe parent "Animal" et ajoutez des comportements spécifiques 
chaque sous-classe.


 */
void main() {
  // Classe chien
  var chien_class = new Chien("Roxi", 4, "Gentil");
  chien_class.afficherInfoAnimal();
  chien_class.crier();

  // Classe chat
  var chat_class = new Chat("Chouchou", 5, "Gentille");
  chat_class.afficherInfoAnimal();
  chat_class.miauler();

  // Classe oiseau
  var oiseau_class = new Oiseau("Aigle", 20, "Pervert");
  oiseau_class.afficherInfoAnimal();
  oiseau_class.chanter();
}

// Classe parent Animal
class Animal {
  String? nom;
  int? age;

  Animal(String nom, int age) {
    this.nom = nom;
    this.age = age;
  }

  void afficherInfoAnimal() {
    print("****** Ceci commence la classe Animal *********");
    print("Nom : $nom\nAge : $age ans");
  }
}

// Classe Chien
class Chien extends Animal {
  String? comportement;

  Chien(String nom, int age, String comportement) : super(nom, age) {
    this.comportement = comportement;
  }

  // Méthode crier
  void crier() {
    print("Ouuuu Ouuuu Ouuuu!");
  }
}

// Classe Chat
class Chat extends Animal {
  String? comportement;

  Chat(String nom, int age, String comportement) : super(nom, age) {
    this.comportement = comportement;
  }

  // Méthode miauler
  void miauler() {
    print("Miaouuuu Miaouuuu Miaouuuu!");
  }
}

// Classe Oiseau
class Oiseau extends Animal {
  String? comportement;

  Oiseau(String nom, int age, String comportement) : super(nom, age) {
    this.comportement = comportement;
  }

  // Méthode chanter
  void chanter() {
    print("KwiiiK KwiiiK KwiiiK!");
  }
}
