import 'package:app/feature/exercise_archive/model/exercise.dart';
import 'package:app/feature/exercise_archive/model/skill_level.dart';
import 'package:app/home/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../widget/exercise_card.dart';

class ExerciseView extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
        longDescription: "Dies ist die lange Beschreibung",
        name: "Übung 1",
        duration: 10,
        description: "Kurzbeschreibung",
        skillLevel: SkillLevel.beginner,
        tags: ["defense", "block"],
        videoUrl: "https://dawdwad.com",
        playerCount: 2),
    Exercise(
        longDescription: "Dies ist die lange Beschreibung 2",
        name: "Übung 2",
        duration: 15,
        description: "Kurzbeschreibung 2",
        skillLevel: SkillLevel.advanced,
        tags: ["hitting"],
        videoUrl: "https://dawdwad.com",
        playerCount: 2)
  ];

  ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text("Übungen"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Modular.to.navigate("/"),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.account_circle_sharp),
                onPressed: () {},
              ),
            ],
          ),
          SliverList.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                return ExerciseCard(exercise: exercises[index]);
              }),
        ],
      ),
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
