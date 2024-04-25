import 'package:flutter/material.dart';
import '../components/recipe_tile.dart';
import '../data/back_data.dart';
import '../models/category.dart';

class RecipeListScreen extends StatelessWidget {
  RecipeListScreen({super.key, required this.category});

  Category category;
  var recipeList = [];

  @override
  Widget build(BuildContext context) {
    recipeList =
        RECIPES.where((recipe) => recipe.categoryId == category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
        backgroundColor: category.color,
      ),
      body: ListView.builder(
          itemCount: recipeList.length,
          itemBuilder: (_, index) {
            return RecipeTile(recipeList[index]);
          }),
    );
  }
}
