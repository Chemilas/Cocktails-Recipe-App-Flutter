import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:glazel/constants/text.dart';
import 'package:glazel/widgets/app_bar.dart';
import 'package:glazel/widgets/background_container.dart';
import 'package:glazel/widgets/recipe_container.dart';

import '../Controller/controller.dart';

class NonAlcoholicDrinks extends StatefulWidget {
  const NonAlcoholicDrinks({super.key});

  @override
  State<NonAlcoholicDrinks> createState() => _NonAlcoholicDrinksState();
}

class _NonAlcoholicDrinksState extends State<NonAlcoholicDrinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyAppBar(text: 'List of Non-Alcoholic CockTails')),
      body: BackgroundContainer(
          image: 'assets/images/bar.jpg',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: controller.nonalcoholicDrinks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Obx((){
                                  return  RecipeContainer(
                                      height: 300,
                                      image: NetworkImage(controller.nonalcoholicDrinks[index]["strDrinkThumb"]));
                                }
                                ),
                                MyText(text: controller.nonalcoholicDrinks[index]["strDrink"], fontSize: 22, fontWeight: FontWeight.bold, textAlign: TextAlign.center,)
                              ],
                            ),
                          )
                      ),
                    );
                  },
                ),
              ),
            ],
          )
      ),
    );
  }
}
