import 'package:flutter/material.dart';

class Recipe {
  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color? startColor;
  Color? endColor;

  Recipe({
    this.recipeName = '',
    this.recipeImage = '',
    this.recipeMaker = '',
    this.startColor,
    this.endColor
  });
}
  var recipes = [
    Recipe(
      recipeName: "Chicken Biryani",
      recipeImage: "chicken-biryani.jpeg",
      recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF621e14),
      endColor: const Color(0xFFF58B5A)
    ),
    Recipe(
        recipeName: "Pav Bhaji",
        recipeImage: "pav-bhaji.jpg",
        recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF621e14),
        endColor: const Color(0xFFd13b10)
    ),
    Recipe(
        recipeName: "Onion Chizz Pizza",
        recipeImage: "pizza.jpg",
        recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF621e14),
        endColor: const Color(0xFFd13b10)
    ),
    Recipe(
        recipeName: "Corn Sabji",
        recipeImage: "corn-sabji.jpeg",
        recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF621e14),
        endColor: const Color(0xFFd13b10)

    ),
    Recipe(
        recipeName: "Full Meal Thali",
        recipeImage: "full-thali.jpg",
        recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF621e14),
        endColor: const Color(0xff724a0d)
    ),
    Recipe(
        recipeName: "Vegetable Salad",
        recipeImage: "salad.jpg",
        recipeMaker: "Omkar Pendkalkar",
        startColor: const Color(0xFF8b1d07),
        endColor: const Color(0xFFee882d)
    ),
  ];
