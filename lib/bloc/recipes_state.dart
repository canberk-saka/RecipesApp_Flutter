import 'package:api_deneme/models/recipes_model.dart';

abstract class RecipesState {}

class RecipesInitial extends RecipesState {}

class RecipesLoading extends RecipesState {}

class RecipesLoaded extends RecipesState {
  final RecipesModel recipesModel;

  RecipesLoaded(this.recipesModel);
}

class RecipesError extends RecipesState {
  final String message;

  RecipesError(this.message);
}
