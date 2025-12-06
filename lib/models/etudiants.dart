// La classe Étudiant hérite de Personne.
// C'est un vrai modèle avec ses propres attributs et méthodes.

import 'package:app1/models/personne.dart';

class Etudiant extends Personne {
  // _ au début = attribut privé (accessible uniquement ici)
  double _moyenne = 0;

  // Attribut normal
  double note;

  // Constructeur avec arguments nommés
  Etudiant({
    required String prenom,
    required String nom,
    required String matricule,
    required this.note,
  }) : super(
          prenom: prenom,
          nom: nom,
          matricule: matricule,
        );

  // Getter simple
  double get moyenne => _moyenne;

  // Setter avec contrôle de validité
  set moyenne(double x) {
    if (x >= 0 && x <= 20) {
      _moyenne = x;
    } else {
      print("La moyenne doit être entre 0 et 20");
    }
  }

  // Permet d'afficher proprement l'objet Étudiant
  @override
  String toString() {
    return "Matricule : $matricule | $prenom $nom | Moyenne : $_moyenne | Note : $note";
  }

  // Constructeur automatique à partir d'un Map
  factory Etudiant.fromMap(Map<String, dynamic> et) {
    return Etudiant(
      prenom: et["prenom"],
      nom: et["nom"],
      matricule: et["matricule"],
      note: et["note"],
    );
  }

  @override
  String getPrenom() => prenom;

  @override
  String getNom() => nom;
}
