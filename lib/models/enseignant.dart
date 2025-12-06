// Enseignant hérite de Personne.
// C'est une classe simple qui montre l'héritage.

import 'package:app1/models/personne.dart';

class Enseignant extends Personne {
  // Attribut spécifique aux enseignants
  final String matiere;

  Enseignant({
    required super.prenom,
    required super.nom,
    required super.matricule,
    required this.matiere,
  });

  @override
  String getPrenom() => prenom;

  @override
  String getNom() => nom;
}
