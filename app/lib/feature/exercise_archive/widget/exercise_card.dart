import 'dart:math';

import 'package:app/feature/exercise_archive/model/exercise.dart';
import 'package:app/feature/exercise_archive/model/skill_level.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Column(
                      children: [
                        CircularStepProgressIndicator(
                          totalSteps: SkillLevel.values.length,
                          currentStep: exercise.skillLevel.index + 1,
                          stepSize: 15,
                          selectedColor: Colors.green,
                          unselectedColor: const Color.fromARGB(0, 244, 67, 54),
                          padding: pi / 80,
                          width: 50,
                          height: 40,
                          startingAngle: pi / 2,
                          arcSize: pi,
                          gradientColor: const LinearGradient(
                              colors: [Colors.green, Colors.red]),
                        ),
                        Text(exercise.skillLevel.name.toUpperCase()),
                      ],
                    ),
                    title: Text(exercise.name,
                        style: Theme.of(context).textTheme.headlineSmall),
                    subtitle: Text(exercise.description,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text("Spieleranzahl:"),
                          const SizedBox(width: 10),
                          Row(
                            children: buildPlayerCount(),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          label: const Text("Add")),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }

  List<Widget> buildPlayerCount() {
    return List.generate(
        exercise.playerCount, (index) => const Icon(Icons.person));
  }
}
