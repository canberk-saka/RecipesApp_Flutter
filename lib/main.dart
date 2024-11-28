import 'package:api_deneme/bloc/recipes_bloc.dart';
import 'package:api_deneme/bloc/recipes_event.dart';
import 'package:api_deneme/screens/home_screen.dart';
import 'package:api_deneme/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService();

    return BlocProvider(
      create: (context) => RecipesBloc(apiService)..add(FetchRecipesEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
