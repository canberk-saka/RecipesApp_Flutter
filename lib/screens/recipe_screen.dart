import 'package:api_deneme/widgets/recipe_image.dart';
import 'package:api_deneme/widgets/recipe_ingredients_card.dart';
import 'package:api_deneme/widgets/recipe_instructions_card.dart';
import 'package:flutter/material.dart';
import 'package:api_deneme/constants/constants.dart';
import 'package:api_deneme/models/recipes_model.dart';

import 'package:api_deneme/widgets/recipe_details_card.dart';

class RecipeScreen extends StatelessWidget {
  final Recipes recipe;

  const RecipeScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(recipe.name ?? "Tarif Detayı"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.cardPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeImageCard(imageUrl: recipe.image),
              const SizedBox(height: 16),
              RecipeDetailsCard(
                name: recipe.name,
                servings: recipe.servings,
                prepTimeMinutes: recipe.prepTimeMinutes,
                rating: recipe.rating,
              ),
              const SizedBox(height: 16),
              RecipeIngredientsCard(ingredients: recipe.ingredients),
              const SizedBox(height: 16),
              RecipeInstructionsCard(instructions: recipe.instructions),
            ],
          ),
        ),
      ),
    );
  }
}
