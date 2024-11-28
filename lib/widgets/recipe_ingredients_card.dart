import 'package:flutter/material.dart';
import 'package:api_deneme/constants/constants.dart';

class RecipeIngredientsCard extends StatelessWidget {
  final List<String>? ingredients;

  const RecipeIngredientsCard({Key? key, this.ingredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      elevation: AppConstants.cardElevation,
      child: Padding(
        padding: AppPadding.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Malzemeler",
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 8),
            if (ingredients != null && ingredients!.isNotEmpty)
              ...ingredients!
                  .map((ingredient) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text("- $ingredient", style: AppTextStyles.body),
                      ))
                  .toList(),
            if (ingredients == null || ingredients!.isEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text("Henüz malzeme listesi eklenmemiş.",
                    style: AppTextStyles.body),
              ),
          ],
        ),
      ),
    );
  }
}
