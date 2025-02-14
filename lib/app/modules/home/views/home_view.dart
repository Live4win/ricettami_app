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
                          Column(
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
                    SizedBox(
                        //color: Colors.blue,
                        height: 450,
                        /*width: 800,*/ child: ResponsiveGridList(
                          desiredItemWidth: 500,
                          shrinkWrap: true,
                          minSpacing: 44.0,
                          //shrinkWrap: true,
                          /*crossAxisCount: (context.width >= 1775) ? 3 : 2,
                          childAspectRatio: 3,
                          mainAxisSpacing: 44,
                          crossAxisSpacing: 44,*/

                          ///padding: EdgeInsets.all(44),
                          children: [
                            RecipeCard(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                //constraints: BoxConstraints(),
                                clipBehavior: Clip.hardEdge,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 24),
                                //height: 250,
                                //width: 400,

                                constraints:
                                    BoxConstraints.tightFor(width: 250),
                                decoration: BoxDecoration(
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 24,
                                  children: [
                                    Text(
                                      'Pesto alla genovese',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              spacing: 24,
                                              children: [
                                                Icon(
                                                  RicettamiIcons.chef_hat,
                                                  size: 44,
                                                ),
                                                Column(
                                                  spacing: 8,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 310,
                                                      child: Text(
                                                        'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                                        //maxLines: 2,
                                                        softWrap: true,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 310,
                                                      child: Text(
                                                        'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                                        maxLines: 2,
                                                        softWrap: true,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.ac_unit)),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.ac_unit)),
                                              ],
                                            )
                                          ],
                                        ),
                                        /*Row(
                                          spacing: 24,
                                          children: [
                                            Icon(
                                              RicettamiIcons.chef_hat,
                                              size: 44,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              spacing: 8,
                                              children: [
                                                SizedBox(
                                                  //width: 320,
                                                  child: Text(
                                                    'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                                    //maxLines: 2,
                                                    softWrap: true,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  //width: 320,
                                                  child: Text(
                                                    'Descrizione ricetta 1, guarda come psuef sdb fpsbfp b dsbfiup bdfsifbsdifbs b pfdsibuf spdb fsdbp',
                                                    //maxLines: 2,
                                                    softWrap: true,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),*/
                                        /*Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.edit_outlined,
                                                  size: 44,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  RicettamiIcons.delete,
                                                  size: 44,
                                                )),
                                          ],
                                        )*/
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
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
