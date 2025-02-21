//Home Screen
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> recipes = ["Pasta", "Tacos", "Butter Chicken", "Chicken Biryani"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Book"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: recipes[index],
              );
            },
          );
        },
      ),
    );
  }
}