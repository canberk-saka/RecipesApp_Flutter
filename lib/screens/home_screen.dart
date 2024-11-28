import 'package:api_deneme/bloc/recipes_bloc.dart';
import 'package:api_deneme/bloc/recipes_state.dart';
import 'package:api_deneme/constants/constants.dart';
import 'package:api_deneme/models/recipes_model.dart';
import 'package:api_deneme/screens/recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<RecipesBloc, RecipesState>(
        builder: (context, state) {
          if (state is RecipesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RecipesLoaded) {
            return ListView.builder(
              itemCount: state.recipesModel.recipes?.length ?? 0,
              itemBuilder: (context, index) {
                Recipes recipe = state.recipesModel.recipes![index];
                return recipesCard(recipe);
              },
            );
          } else if (state is RecipesError) {
            return Center(
                child: Text(state.message, style: AppTextStyles.body));
          } else {
            return const Center(
                child:
                    Text("Tarifler yüklenecek...", style: AppTextStyles.body));
          }
        },
      ),
    );
  }

  Widget recipesCard(Recipes recipe) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeScreen(recipe: recipe),
          ),
        );
      },
      child: Card(
        color: AppColors.cardColor,
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: AppPadding.cardPadding,
          child: Row(
            children: [
              // Resim kısmı
              recipe.image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        recipe.image!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Icon(Icons.fastfood, size: 50, color: AppColors.iconColor),
              const SizedBox(width: 12),
              // Tarifin adı ve porsiyon sayısı
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipe.name ?? "No Name",
                        style: AppTextStyles.cardTitle),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.star, color: AppColors.iconStarColor),
                        const SizedBox(width: 8),
                        Text(
                          "Puan: ${recipe.rating ?? 'Bilinmiyor'}",
                          style: AppTextStyles.cardSubtitle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
