import 'package:flutter/material.dart';
import 'package:api_deneme/constants/constants.dart';

class RecipeDetailsCard extends StatelessWidget {
  final String? name;
  final int? servings;
  final int? prepTimeMinutes;
  final double? rating;

  const RecipeDetailsCard({
    Key? key,
    required this.name,
    required this.servings,
    required this.prepTimeMinutes,
    required this.rating,
  }) : super(key: key);

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
            Text(name ?? "No Name", style: AppTextStyles.title),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.group, color: AppColors.iconColor),
                const SizedBox(width: 8),
                Text(
                  "Porsiyon: ${servings ?? 'Bilinmiyor'}",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.schedule, color: AppColors.iconColor),
                const SizedBox(width: 8),
                Text(
                  "Hazırlık Süresi: ${prepTimeMinutes ?? 'Bilinmiyor'} dakika",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: AppColors.iconStarColor),
                const SizedBox(width: 8),
                Text(
                  "Puan: ${rating ?? 'Bilinmiyor'}",
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
