/*
Exercice : Gestion d'inventaire de magasin

Imaginez que vous développiez un programme pour gérer l'inventaire d'un magasin. 
Vous souhaitez utiliser des énumérations pour représenter les différents types de produits que le magasin vend. 
Voici comment vous pouvez procéder :

    Créez une énumération appelée "TypeProduit" pour représenter les différents types de produits que le magasin vend. 
    Vous pouvez inclure des types de produits tels que "Alimentaire", "Vêtement", "Électronique", etc.

    Créez une classe "Produit" avec des propriétés telles que "nom", "prix", "quantité en stock" et "type de produit". 
    Le type de produit doit être basé sur l'énumération "TypeProduit".

    Créez une liste de produits pour simuler l'inventaire du magasin. Ajoutez plusieurs produits de différents types à la liste.

    Écrivez une fonction qui parcourt la liste d'inventaire et affiche les détails de chaque produit, 
    y compris le type de produit. Vous pouvez utiliser une boucle "for" pour cela.

    Ajoutez un autre produit à la liste, puis appelez à nouveau votre fonction d'affichage 
    pour vérifier que le nouveau produit est correctement affiché.

    Utilisez des instructions conditionnelles pour filtrer et afficher uniquement les produits d'un certain type 
    (par exemple, tous les produits alimentaires).

    Modifiez le prix d'un produit spécifique dans la liste et affichez à nouveau l'inventaire mis à jour.

    Enfin, supprimez un produit de la liste et affichez l'inventaire mis à jour.
 */

void main() {
  // Créez une liste de produits avec des types de produits basés sur l'énumération
  List<Produit> inventaire = [
    Produit("Riz", 10.0, 100, TypeProduit.Alimentaire),
    Produit("Biscuit", 5.0, 50, TypeProduit.Alimentaire),
    Produit("Tee-shirt", 20.0, 30, TypeProduit.Vetement),
    Produit("Jeans", 40.0, 20, TypeProduit.Vetement),
    Produit("Groupe", 100.0, 5, TypeProduit.Electronique),
    Produit("Lampe", 15.0, 15, TypeProduit.Electronique),
  ];

  // Affichez l'inventaire
  print("Inventaire du magasin :");
  for (var produit in inventaire) {
    produit.afficherProduit();
  }

  // Ajoutez un nouveau produit au magasin
  inventaire.add(Produit("Arduino", 30.0, 10, TypeProduit.Electronique));

  // Affichez l'inventaire mis à jour
  print("\nInventaire mis à jour du magasin :");
  for (var produit in inventaire) {
    produit.afficherProduit();
  }
}

class Produit {
  String nom;
  double prix;
  int quantite;
  TypeProduit type;

  Produit(this.nom, this.prix, this.quantite, this.type);

  void afficherProduit() {
    var typeString = type.toString().split('.').last;
    print(
        "Nom : $nom | Prix : $prix | Quantité : $quantite | Type : $typeString");
  }
}

enum TypeProduit { Alimentaire, Vetement, Electronique }
