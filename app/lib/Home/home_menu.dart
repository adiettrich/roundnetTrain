import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: HomeScreenTile(
                  color: Colors.blue,
                  title: 'Exercise View',
                ),
              ),
              Expanded(
                child: HomeScreenTile(
                  color: Colors.green,
                  title: 'Training Builder',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: HomeScreenTile(
                  color: Colors.orange,
                  title: 'Tile 3',
                ),
              ),
              Expanded(
                child: HomeScreenTile(
                  color: Colors.purple,
                  title: 'Tile 4',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeScreenTile extends StatelessWidget {
  final Color color;
  final String title;

  const HomeScreenTile({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "Exercise View":
            Modular.to.navigate('/exercise_view');
            break;
          case "Training Builder":
            Modular.to.navigate('/training_builder');
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4.0,
        color: color,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
