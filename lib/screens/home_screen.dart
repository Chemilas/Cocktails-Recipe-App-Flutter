import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glazel/api/apiservice.dart';
import 'package:glazel/constants/lists.dart';
import 'package:glazel/widgets/app_bar.dart';
import 'package:glazel/widgets/background_container.dart';
import 'package:glazel/widgets/recipe_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    apiService.getRandom();
    apiService.getCocktails();
    apiService.getAlcoholic();
    apiService.getNonalcoholic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: MyAppBar(
          text: 'Welcome To The Kitchen!',
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop){SystemNavigator.pop();},
        child: BackgroundContainer(
            image: 'assets/images/bar.jpg',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: lists.drinks.length,
                      itemBuilder: (context, index) {
                        return RecipeContainer(
                          text: lists.drinks[index]["name"],
                          image: AssetImage(lists.drinks[index]["img"]),
                          onTap: () {
                            Get.to(lists.drinks[index]["class"]);
                          },
                        );
                      }),
                )
              ],
            )
        ),
      ),
    );
  }
}
