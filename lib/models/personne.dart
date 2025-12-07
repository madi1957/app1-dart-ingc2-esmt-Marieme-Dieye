// Classe abstraite = modèle général qui sert de base à d'autres classes.
// On ne peut pas créer une Personne directement.
// Elle force les classes filles à définir certaines méthodes.

abstract class Personne {
  // final = la valeur ne changera jamais après attribution.
  final String prenom;
  final String nom;
  final String matricule;

  Personne({
    required this.prenom, // Obligatoire : prénom
    required this.nom,
    required this.matricule,
  });

  // Méthodes que les classes filles doivent redéfinir
  String getPrenom();
  String getNom();
}
