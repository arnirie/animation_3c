import 'package:flutter/material.dart';
import 'screens/category_list.dart';

void main() {
  runApp(PinoyRecipeApp());
}

//TODO:
//!1) Categories (ie Kapampangan, Ilocano)
//! 2) Category List Screen
//! 3) Recipe
// 4) Recipe List Screen per Category
// 5) Recipe Viewing

//TOPICS:
//GridView, Data Classes, Navigator

class PinoyRecipeApp extends StatelessWidget {
  const PinoyRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryListScreen(),
    );
  }
}
