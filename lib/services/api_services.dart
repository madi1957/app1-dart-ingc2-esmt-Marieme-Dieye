import 'dart:convert';         // Pour jsonDecode()
import 'package:http/http.dart' as http; // Pour faire les requêtes HTTP

class ApiServices {

  // Méthode statique pour récupérer des données depuis une URL
  static dynamic getData(String url) async {

    try {

      // Requête GET pour récupérer les données depuis l'URL
      // await = attendre la réponse avant de continuer
      // var = variable dont Dart déduit automatiquement le type
      var response = await http.get(Uri.parse(url));

      // Vérifie si tout s'est bien passé (code 200 = succès)
      if (response.statusCode == 200) {

        // jsonDecode transforme le JSON (texte) en Map/List utilisable en Dart
        var value = jsonDecode(response.body);

        return value; // retourne les données récupérées
      } else {

        // Si le code n'est pas 200, affiche l'erreur
        throw("Code : ${response.statusCode} | Raison : ${response.reasonPhrase}");
      }

    } catch(e, stackTrace) {

      // Si une erreur survient, l'afficher pour comprendre ce qui s'est passé
      print("$e $stackTrace");
    }
  }
}
