/*
Exercice : Gestion des jours de la semaine

    Créez une énumération appelée "JourSemaine" pour représenter les jours de la semaine 
    (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche).

    Écrivez une fonction qui prend un objet de type "JourSemaine" en paramètre et affiche le jour de la semaine correspondant.

    Utilisez un switch pour implémenter la fonction en fonction de la valeur de l'énumération passée en paramètre.

    Appelez la fonction pour chaque jour de la semaine pour vérifier qu'elle affiche le bon jour.

    Modifiez la fonction pour qu'elle prenne un deuxième paramètre de type booléen indiquant 
    si c'est un jour de travail ou un jour de repos.

    En utilisant l'énumération et le paramètre booléen, modifiez la fonction pour afficher 
    si le jour est un jour de travail ou de repos.

    Créez une liste de jours de la semaine et utilisez une boucle pour parcourir la liste et afficher 
    chaque jour en indiquant s'il s'agit d'un jour de travail ou de repos.

    Ajoutez un autre jour de la semaine à l'énumération et mettez à jour la liste pour inclure ce jour. 
    Vérifiez que votre code fonctionne toujours correctement avec ce nouvel ajout.
 */

void main() {
  // Créez une liste de jours de la semaine
  List<JourSemaine> jours = [
    JourSemaine.lundi,
    JourSemaine.mardi,
    JourSemaine.mercredi,
    JourSemaine.jeudi,
    JourSemaine.vendredi,
    JourSemaine.samedi,
    JourSemaine.dimanche,
  ];

  // Parcourez la liste et affichez chaque jour
  for (var jour in jours) {
    afficherJour(jour, estJourTravail(jour));
  }

  // Ajoutez un autre jour à l'énumération et affichez-le
  JourSemaine nouveauJour = JourSemaine.nouveauJour;
  afficherJour(nouveauJour, estJourTravail(nouveauJour));
}

void afficherJour(JourSemaine jour, bool estTravail) {
  var jourString = jour.toString().split('.').last;
  var typeJour = estTravail ? "travail" : "repos";
  print("$jourString est un jour de $typeJour.");
}

bool estJourTravail(JourSemaine jour) {
  switch (jour) {
    case JourSemaine.lundi:
    case JourSemaine.mardi:
    case JourSemaine.mercredi:
    case JourSemaine.jeudi:
    case JourSemaine.vendredi:
      return true;
    case JourSemaine.samedi:
    case JourSemaine.dimanche:
      return false;
    default:
      return false;
  }
}

enum JourSemaine {
  lundi,
  mardi,
  mercredi,
  jeudi,
  vendredi,
  samedi,
  dimanche,
  nouveauJour
}
