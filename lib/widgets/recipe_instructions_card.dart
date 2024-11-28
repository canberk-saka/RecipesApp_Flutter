import 'package:flutter/material.dart';
import 'package:api_deneme/constants/constants.dart';

class RecipeInstructionsCard extends StatelessWidget {
  final List<String>? instructions;

  const RecipeInstructionsCard({Key? key, this.instructions}) : super(key: key);

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
              "Yapılış Talimatları",
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 8),
            if (instructions != null && instructions!.isNotEmpty)
              ...instructions!
                  .map((instruction) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child:
                            Text("- $instruction", style: AppTextStyles.body),
                      ))
                  .toList(),
            if (instructions == null || instructions!.isEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text("Henüz talimat eklenmemiş.",
                    style: AppTextStyles.body),
              ),
          ],
        ),
      ),
    );
  }
}
