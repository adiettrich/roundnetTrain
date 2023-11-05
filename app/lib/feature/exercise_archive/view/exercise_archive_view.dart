import 'package:app/feature/exercise_archive/model/exercise.dart';
import 'package:flutter/material.dart';

import '../widget/exercise_card.dart';

class ExerciseView extends StatelessWidget {
  final List<Exercise> exercises;

  const ExerciseView({super.key, required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: exercises
              .map((exercise) => ExerciseCard(exercise: exercise))
              .toList(),
        ));
  }
}
