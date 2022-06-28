import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text('${selectedMeal.title}')),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              // Adding an image to screen from dummy dart info
              child: Image.network(
                selectedMeal.imageUrl,
                // Make image fit screensize
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
