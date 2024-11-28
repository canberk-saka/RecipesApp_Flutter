import 'package:api_deneme/bloc/recipes_event.dart';
import 'package:api_deneme/bloc/recipes_state.dart';
import 'package:api_deneme/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final ApiService _apiService;

  RecipesBloc(this._apiService) : super(RecipesInitial()) {
    on<FetchRecipesEvent>((event, emit) async {
      emit(RecipesLoading());
      try {
        var recipesModel = await _apiService.fetchRecipes();
        if (recipesModel != null) {
          emit(RecipesLoaded(recipesModel));
        } else {
          emit(RecipesError("Tarifler alınamadı."));
        }
      } catch (e) {
        emit(RecipesError("Hata oluştu: $e"));
      }
    });
  }
}
