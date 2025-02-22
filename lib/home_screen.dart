import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipe.dart';
import 'details_screen.dart';
import 'favorite_recipe_notifier.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: "Pasta",
      ingredients: "Pasta, Tomato Sauce, Garlic, Basil",
      instructions: "Boil pasta, cook sauce, mix together.",
    ),
    Recipe(
      name: "Fried Rice",
      ingredients: "Cooked, Chilled Rice, Eggs, Carrots, Onions, Green Onions and Peas, Garlic, Soy Sauce, Toasted Sesame Oil, Butter",
      instructions: "Scramble eggs, Sauté veggies and garlic, Stir fry rice, Remove pan from heat, Taste and season, Serve",
    ),
    Recipe(
      name: "Butter Chicken",
      ingredients: "Chicken, Butter or Ghee, Onion, Garlic, Ginger, Tomato Paste, Lemon Juice, Garam Masala, and Ground Cumin.",
      instructions: "Marinate the chicken, Grill the chicken, In a pan, cook the onions, garlic, and ginger, Add the tomato paste, spices, and other ingredients, Pour the spiced gravy over the chicken"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/favorites');
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
