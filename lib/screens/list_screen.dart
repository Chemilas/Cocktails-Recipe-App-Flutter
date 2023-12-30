import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glazel/api/apiservice.dart';
import 'package:glazel/constants/colors.dart';
import 'package:glazel/constants/text.dart';
import 'package:glazel/screens/recipe.dart';
import 'package:glazel/widgets/app_bar.dart';
import 'package:glazel/widgets/background_container.dart';
import 'package:glazel/Controller/controller.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  void initState() {
    apiService.getCocktails();
    super.initState();
  }

  var data = "";
  dynamic dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyAppBar(text: 'Cocktail Recipes')),
      body: BackgroundContainer(
            image: 'assets/images/bar.jpg',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('View all  Cocktails by its First Letter',
                  style: GoogleFonts.ephesis(fontSize: 30, fontWeight: FontWeight.w500, color: MyColors.primary,),textAlign: TextAlign.center,),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    height: 58,
                    width: 150,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Select Letter',
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelStyle: GoogleFonts.poppins(),
                        hintStyle: GoogleFonts.poppins(),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      value: dropdownvalue,
                        items: controller.letters.map((item){
                      return DropdownMenuItem(
                          value: item,
                          child: MyText(text: item["alphabet"],));
                    }).toList(),
                        onChanged: (value){
                        setState(() {
                          dropdownvalue=value;
                          controller.first.value=dropdownvalue["letter"];
                          apiService.getCocktails();
                        });
                        }),
                  ),
                ),
                Expanded(
                  child: Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.drinks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 2,
                        child: SizedBox(
                            height: 90,
                            width: 420,
                            child: Obx((){
                              return ListTile(
                                title: MyText(text: controller.drinks[index]["strDrink"],fontSize: 22,fontWeight: FontWeight.bold,textAlign: TextAlign.center,),
                                subtitle: MyText(text: controller.drinks[index]["strCategory"],fontSize: 18,textAlign: TextAlign.center,),
                                onTap: (){
                                  data=controller.drinks[index]["strDrink"];
                                  controller.list.clear();
                                  if(controller.drinks[index]["strDrink"]==data){
                                    controller.list.add(controller.drinks[index]);
                                  }
                                  Get.to(
                                      Recipe(drinkList:controller.list)
                                  );
                                },
                              );
                            })
                        ),
                      );
                    },
                  ),),
                ),
              ],
            )
        ),
      );
  }
}
