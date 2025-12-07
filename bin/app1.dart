

import 'package:app1/models/enseignant.dart';
import 'package:app1/models/etudiants.dart';
import 'package:app1/services/api_services.dart';

void main() async {
  print("==== Démonstration avec la classe Étudiant ====");

  // Création d’un étudiant avec le constructeur nommé
  Etudiant e = Etudiant(
    prenom: "Titi",
    nom: "Toto",
    matricule: "1234",
    note: 15.5,
  );

  // On modifie sa moyenne via le setter (avec contrôle)
  e.moyenne = 18;

  // Affichage avec toString()
  print(e.toString());

  print("\n-----Utilisation d’un Map pour créer un Étudiant ----");
// Déclaration d'un Map pour un étudiant
// clé (String) : nom de l'attribut
// valeur (dynamic) : valeur associée, peut être n'importe quel typ

  Map<String, dynamic> etudiantMap = {
    "prenom": "Abdoul Razak", // clé "prenom", valeur "Abdoul Razak"
    "nom": "Issaka",
    "matricule": "0072",
    "note": 18.75,
  };

  Etudiant e2 = Etudiant.fromMap(etudiantMap);
  e2.moyenne = 19;
  print(e2.toString());

  print("\n---- Appel API (exemple) ----");

  final result =
      await ApiServices.getData("https://jsonplaceholder.typicode.com/users");

  // On convertit l’objet dynamique en une liste de Map
  List<Map<String, dynamic>> users =
      List<Map<String, dynamic>>.from(result);

  // On affiche quelques champs des utilisateurs
  for (var u in users) {
    print("${u["name"]} - ${u["username"]} - ${u["email"]}");
  }

  print("\n---- Démonstration avec la classe Enseignant -----");

  Enseignant en = Enseignant(
    prenom: "Oumar Samba",
    nom: "BA",
    matricule: "0001",
    matiere: "Reseaux",
  );

  print("${en.matiere} ${en.prenom} ${en.nom} ${en.matricule}");
}

