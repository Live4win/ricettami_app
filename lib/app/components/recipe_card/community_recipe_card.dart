import 'package:flutter/material.dart';
import 'recipe_card.dart' show RecipeCard;
import 'package:ricettami_app/core_packages.dart';

class CommunityRecipeCard extends RecipeCard {
  final String? description;

  CommunityRecipeCard(
      {super.key,
      required super.mainTitle,
      this.description,
      super.content,
      super.onTap})
      : super(secondaryTitle: description, mainIcon: Icons.person, trailing: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              RicettamiIcons.cloud_download,
              size: 32,
            ),
          ),
        ]);
}
