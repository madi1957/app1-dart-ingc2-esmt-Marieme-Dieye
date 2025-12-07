import 'package:app1/models/personne.dart'; // Héritage de Personne

// Classe Enseignant
class Enseignant extends Personne {

  final String matiere; // Attribut spécifique à l'enseignant

  // Constructeur
  Enseignant({
    required super.prenom,      // héritage du constructeur parent
    required super.nom,
    required super.matricule,
    required this.matiere,      // obligatoire pour enseignant
  });

  // Méthodes obligatoires héritées de Personne
  @override
  String getPrenom() => prenom;

  @override
  String getNom() => nom;
}
