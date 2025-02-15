import 'package:flutter/material.dart';
import 'package:ricettami_app/core_packages.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:ricettami_app/app/components/recipe_card/recipe_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: NavigationRail(
                  //minWidth: 72,
                  //elevation: 5.0,
                  //extended: true,
                  //backgroundColor: Colors.white,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 32.0, bottom: 64.0),
                    child: Column(
                      spacing: 62,
                      children: [
                        Image.asset(
                          'assets/ricettami_logo.png',
                          width: 64,
                        ),
                        FloatingActionButton(
                          child: Icon(RicettamiIcons.icon),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  labelType: NavigationRailLabelType.all,
                  useIndicator: true,
                  destinations: <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(RicettamiIcons.home),
                      selectedIcon: Icon(RicettamiIcons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(RicettamiIcons.account_group),
                      selectedIcon: Icon(RicettamiIcons.account_group),
                      label: Text('Community'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(RicettamiIcons.creation_outline),
                      selectedIcon: Icon(RicettamiIcons.creation_outline),
                      label: Text('Mix it up!'),
                    ),
                  ],
                  selectedIndex: 0),
            ),
            //const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              //width: 1000,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 40,
                  children: [
                    Container(
                      height: 165,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Benvenuto Emmanuel, ecco le tue ricette',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Crea, modifica e condividi le tue ricette',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              IconButton(
                                icon: Icon(RicettamiIcons.settings),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ResponsiveGridList(
                        desiredItemWidth: 400,
                        minSpacing: 44.0,
                        //shrinkWrap: true,
                        //minSpacing: 44.0,
                        //shrinkWrap: true,
                        /*crossAxisCount: (context.width >= 1775) ? 3 : 2,
                        childAspectRatio: 3,
                        mainAxisSpacing: 44,
                        crossAxisSpacing: 44,*/
                        //crossAxisCount: 2,
                        //mainAxisSpacing: 44,
                        //crossAxisSpacing: 44,
                        //childAspectRatio: context.width / 550,

                        ///padding: EdgeInsets.all(44),
                        children: [
                          RecipeCard(),
                          RecipeCard(),
                          RecipeCard(),
                          RecipeCard(),
                          RecipeCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
