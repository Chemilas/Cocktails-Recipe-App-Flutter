import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:glazel/constants/text.dart';
import 'package:glazel/Controller/controller.dart';
import 'package:glazel/widgets/app_bar.dart';
import 'package:glazel/widgets/background_container.dart';
import 'package:glazel/widgets/recipe_container.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomDrink extends StatefulWidget {
  const RandomDrink({super.key});

  @override
  State<RandomDrink> createState() => _RandomDrinkState();
}

class _RandomDrinkState extends State<RandomDrink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: MyAppBar(
          text: 'Random Drink',
        ),
      ),
      body: BackgroundContainer(
        image: 'assets/images/barman.jpg',
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: controller.random.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx((){
                          return Text(controller.random[index]["strDrink"],
                              style: GoogleFonts.ephesis(fontSize: 40, fontWeight: FontWeight.w600,color: const Color(0xff301934)));
                        }),
                        RecipeContainer(
                            height: 290,
                            width: 350,
                            image: NetworkImage(
                                controller.random[index]["strDrinkThumb"].toString())),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: SizedBox(
                            height: 550,
                            width: 400,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(
                                  height: 350,
                                  width: 350,
                                  child: Column(
                                    children: [
                                      const MyText(text: 'Ingredients', fontWeight: FontWeight.bold, fontSize: 30),
                                      Flexible(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient1"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure1"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient2"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure2"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient3"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure3"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient4"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure4"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient5"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure5"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient6"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure6"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[index]["strIngredient7"], fontSize: 18,),
                                                MyText(text: controller.random[index]["strMeasure7"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient8"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure8"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient9"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure9"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient10"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure10"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient11"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure11"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient12"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure12"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient13"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure13"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient14"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure14"], fontSize: 18,),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                MyText(text: controller.random[0]["strIngredient15"], fontSize: 18,),
                                                MyText(text: controller.random[0]["strMeasure15"], fontSize: 18,),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:  MediaQuery.of(context).size.height,
                                  width: 300,
                                  child: Column(
                                    children: [
                                      const MyText(text: 'Making', fontWeight: FontWeight.bold, fontSize: 30,textAlign: TextAlign.center,),
                                      Flexible(child: MyText(text: controller.random[index]["strInstructions"], fontSize: 18,)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ); },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
