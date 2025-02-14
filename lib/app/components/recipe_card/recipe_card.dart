import 'package:flutter/material.dart';
import 'package:ricettami_app/core_packages.dart';

class RecipeCard extends StatelessWidget {
  final double? width;
  final double? height;

  const RecipeCard({this.width, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    /*return InkWell(
      onTap: () {},
      child: Container(
        //constraints: BoxConstraints(),
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 24),
        //height: 250,
        //width: 8400,

        constraints: BoxConstraints.tightFor(width: 650), // does not work
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 310,
                              child: Text(
                                'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                //maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 310,
                              child: Text(
                                'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    */

    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 24),
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
          mainAxisSize: MainAxisSize.min,
          spacing: 24,
          children: [
            Text(
              'Recipe title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: (width ?? context.width) /
                          2.5, // Adjust the width as needed
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            RicettamiIcons.chef_hat,
                            size: 44,
                          ),
                          SizedBox(
                              width: 24), // Add spacing between icon and text
                          Flexible(
                            child: Column(
                              spacing: 8,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Recipe descriptionRecipe descriptionRecipe descriptionRecipe descriptionRecipe descriptionRecipe descriptionRecipe description',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Recipe content',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Trailing icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Trailing icons go here
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        RicettamiIcons.edit,
                        size: 32,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        RicettamiIcons.delete,
                        size: 32,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
