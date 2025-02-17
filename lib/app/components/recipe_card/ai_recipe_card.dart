import 'package:flutter/material.dart';
import 'recipe_card.dart' show RecipeCard;
import 'package:ricettami_app/core_packages.dart';

class AiRecipeCard extends RecipeCard {
  final String? description;

  AiRecipeCard(
      {super.key,
      required super.mainTitle,
      this.description,
      super.content,
      super.onTap})
      : super(
            secondaryTitle: description,
            mainIcon: RicettamiIcons.creation_outline,
            trailing: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  RicettamiIcons.cloud_download,
                  size: 32,
                ),
              )
            ]);
}
