import 'package:flutter/material.dart';
import 'package:api_deneme/constants/constants.dart';

class RecipeImageCard extends StatelessWidget {
  final String? imageUrl;

  const RecipeImageCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) return const SizedBox.shrink();

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      elevation: AppConstants.cardElevation,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        child: Image.network(
          imageUrl!,
          width: double.infinity,
          height: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
