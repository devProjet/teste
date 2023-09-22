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
  //Liste des produits
  List<Produit> produits = [
    Produit("Biscuit", 100.0, 20, TypeProduit.Alimentaire),
    Produit("Pizza", 1000.0, 200, TypeProduit.Alimentaire),
    Produit("Tee-shirt", 15000.0, 50, TypeProduit.Vetement),
    Produit("Jeans", 30000.0, 200, TypeProduit.Vetement),
    Produit("Esp32", 60000.0, 30, TypeProduit.Vetement),
    Produit("Arduino", 40000.0, 200, TypeProduit.Vetement),
  ];

  //Fonction qui parcourir la liste
  for (var prt in produits) {
    prt.affichage();
  }

  //nouveau produit
  produits.add(Produit("Riz", 800.0, 250, TypeProduit.Alimentaire));

  //Affichage à nouveau
  for (var prt in produits) {
    prt.affichage();
  }

  //Condition
}

//classe Produit
class Produit {
  String? nom;
  double? prix;
  int? quantiteEnStock;
  TypeProduit? typeProduit;
  Produit(this.nom, this.prix, this.quantiteEnStock, this.typeProduit);
  void affichage() {
    var typeDeProduit = typeProduit.toString().split('.').last;
    print(
        "Nom: $nom\nPrix: $prix\nQuantite en stock: $quantiteEnStock\nType de produit: $typeDeProduit");
  }
}

enum TypeProduit { Alimentaire, Vetement, Electronique }
