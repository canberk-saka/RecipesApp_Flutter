import 'dart:convert';
import 'package:api_deneme/models/recipes_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = "https://dummyjson.com/recipes";

  Future<RecipesModel?> fetchRecipes() async {
    try {
      var res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        var jsonBody = RecipesModel.fromJson(jsonDecode(res.body));
        return jsonBody;
      } else {
        print("İstek başarısız oldu => ${res.statusCode}");
        return null;
      }
    } catch (e) {
      print("API Hatası: $e");
      return null;
    }
  }
}
