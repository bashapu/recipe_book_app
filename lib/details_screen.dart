import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String recipe = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe),
      ),
      body: Center(
        child: Text("Details for $recipe"),
      ),
    );
  }
}