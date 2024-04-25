import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeViewScreen extends StatelessWidget {
  RecipeViewScreen(this.recipe, {super.key});

  Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: recipe.imageUrl == null
                  ? const Center(
                      child: Text('No Image'),
                    )
                  : Image.network(
                      recipe.imageUrl!,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (recipe.ingredients != null)
            ...recipe.ingredients!
                .map((item) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Text('• $item'),
                    ))
                .toList()
          else
            Text('No Ingredients'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Steps',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (recipe.steps != null)
            ...recipe.steps!
                .map(
                  (item) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item),
                    ),
                  ),
                )
                .toList()
          else
            Text('No Steps'),
        ],
      ),
    );
  }
}
