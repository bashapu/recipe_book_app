import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> favoriteRecipes = [];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/favorites': (context) => FavoritesScreen(favoriteRecipes: favoriteRecipes),
      },
    );
  }
}
