import 'package:flutter/material.dart';
import 'package:ricettami_app/core_packages.dart';

class RecipeCard extends StatelessWidget {
  final double? width;
  final double? height;

  const RecipeCard({this.width, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 24),
        decoration: BoxDecoration(
          //color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        //alignment: AlignmentDirectional.topStart,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    flex: 2,
                    //fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 24,
                          children: [
                            Flexible(
                              flex: 1,
                              //fit: FlexFit.tight,
                              child: Icon(
                                RicettamiIcons.chef_hat,
                                size: 44,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 8,
                                children: [
                                  Text(
                                    'Ricetta 1: Notare come pu; essere fatta una cpsa bellissima del genere bla abla',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'ciaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociaociao',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
