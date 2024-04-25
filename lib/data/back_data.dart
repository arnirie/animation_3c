import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/recipe.dart';

List<Category> CATEGORIES = const [
  Category(
    id: 1,
    name: 'Kapampangan Recipes',
    color: Colors.blue,
  ),
  Category(
    id: 2,
    name: 'Ilocano Recipes',
    color: Colors.green,
  ),
  Category(
    id: 3,
    name: 'Bicol Recipes',
    color: Colors.amber,
  ),
  Category(
    id: 4,
    name: 'Tagalog Recipes',
    color: Colors.cyan,
  ),
  Category(
    id: 5,
    name: 'Visayan Recipes',
  ),
  Category(
    id: 6,
    name: 'Ivatan Recipes',
  ),
];

List<Recipe> RECIPES = const [
  Recipe(
    id: 1,
    categoryId: 1,
    name: 'Chicken Asado',
    ingredients: [
      '3 pounds chicken, cut into serving parts',
      '½ cup calamansi juice',
      '¼ cup soy sauce',
      '1 onion, peeled and sliced thinly',
      '3 cloves garlic, peeled and minced',
      '¼ teaspoon peppercorns, cracked',
      '¼ cup canola oil',
      '2 large potatoes, peeled and sliced into ¼ inch thickness',
      '1 cup tomato sauce',
      '1 cup water',
      '1 bay leaf',
      '2 tablespoons liver spread',
      'salt to taste',
    ],
    steps: [
      '   In a bowl, combine chicken, calamansi juice, soy sauce, onions, garlic, and pepper. Massage marinade on meat and marinate for about 20 to 30 minutes.',
      'Drain chicken, squeezing meat and aromatics to extract liquid. Reserve marinade.',
      'In a skillet or wide pan over medium heat, heat oil. Add potatoes and cook until lightly browned and cooked through. With a slotted spoon, remove from pan and drain on paper towels. Keep warm.',
      'Remove excess oil from pan except for about 2 tablespoons. Add chicken, onions, and garlic. Cook, stirring occasionally until chicken is lightly browned and onions and garlic are softened.',
      'Add reserved marinade and bring to a boil for about 2 to 3 minutes.',
      'Add tomato sauce, water, and bay leaf. Bring to a boil.',
      'Lower heat, cover, and cook for about 30 to 40 minutes or until chicken is cooked through and sauce is reduced. Skim the sauce of rendered fat as needed.',
      'Add liver sauce and stir to distribute. Continue to cook for another 1 to 2 minutes or until sauce is thickened.',
      'Season with salt to taste. Transfer onto a serving platter and garnish with potatoes. Serve hot.',
    ],
    imageUrl:
        'https://www.kawalingpinoy.com/wp-content/uploads/2019/12/chicken-asado-3-730x973.jpg',
    duration: 130,
  ),
  Recipe(
    id: 2,
    categoryId: 2,
    name: 'Pinapaitan',
  ),
  Recipe(
    id: 3,
    categoryId: 4,
    name: 'Chicken Adobo',
  ),
];
