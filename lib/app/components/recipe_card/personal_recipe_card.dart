import 'package:flutter/material.dart';
import 'recipe_card.dart' show RecipeCard;
import 'package:ricettami_app/core_packages.dart';

class PersonalRecipeCard extends RecipeCard {
  final String? description;

  PersonalRecipeCard(
      {super.key,
      required super.mainTitle,
      this.description,
      super.content,
      super.onTap})
      : super(
            secondaryTitle: description,
            mainIcon: RicettamiIcons.chef_hat,
            trailing: [
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
            ]);
}
