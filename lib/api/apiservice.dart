import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:glazel/Controller/controller.dart';

ApiService apiService = ApiService._();

class ApiService {
  ApiService._();

  Future<void> getCocktails() async {
    final response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/search.php?f=${controller.first.value}'));
    final Map<String, dynamic> data = json.decode(response.body);
    controller.drinks.value = data["drinks"];
  }

  Future<void> getRandom() async {
    final response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/random.php'));
    final Map<String, dynamic> randomData = json.decode(response.body);
    controller.random.value = randomData["drinks"];
  }

  Future<void> getAlcoholic() async {
    final response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic'));
    final Map<String, dynamic> alcoholicData = json.decode(response.body);
    controller.alcoholicDrinks.value = alcoholicData["drinks"];
  }

  Future<void> getNonalcoholic() async {
    final response = await http.get(Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Non_Alcoholic'));
    final Map<String, dynamic> nonalcoholicData = json.decode(response.body);
    controller.nonalcoholicDrinks.value = nonalcoholicData["drinks"];
  }
}
