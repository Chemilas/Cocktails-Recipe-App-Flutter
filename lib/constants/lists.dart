import 'package:glazel/screens/alcoholic_screen.dart';
import 'package:glazel/screens/list_screen.dart';
import 'package:glazel/screens/nonalcoholic_screen.dart';
import 'package:glazel/screens/random_drink_screen.dart';

Lists lists = Lists._();

class Lists {
  Lists._();

  List drinks = [
    {
      "name": "Random Drink",
      "img": "assets/images/shots_table.jpg",
      "class": const RandomDrink()
    },
    {
      "name": "Cocktail Recipes",
      "img": "assets/images/cocktail_alcohol.jpg",
      "class": const RecipeScreen()
    },
    {
      "name": "Alcoholic Drinks",
      "img": "assets/images/cocktails_nonalc.jpg",
      "class": const AlcoholicDrinks()
    },
    {
      "name": "Non-Alcoholic Drinks",
      "img": "assets/images/non_alco.jpg",
      "class": const NonAlcoholicDrinks()
    }
  ];
}
