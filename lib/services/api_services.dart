// Fichier qui s'occupe des appels API.
// On utilise http.get pour récupérer des données sur Internet.

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  // Méthode asynchrone = elle prend du temps (connexion Internet)
  static dynamic getData(String url) async {
    try {
      // On envoie une requête GET à l'API
      var response = await http.get(Uri.parse(url));

      // 200 = succès
      if (response.statusCode == 200) {
        // jsonDecode transforme le texte JSON en objet Dart
        return jsonDecode(response.body);
      } else {
        throw ("Code : ${response.statusCode} Erreur : ${response.reasonPhrase}");
      }
    } catch (e, stack) {
      print("Erreur : $e");
      print(stack);
    }
  }
}
