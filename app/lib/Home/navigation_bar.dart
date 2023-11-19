import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: "Train", icon: Icon(Icons.calendar_month_rounded)),
        BottomNavigationBarItem(label: "Übungen", icon: Icon(Icons.list))
      ],
      onTap: (value) {
        switch (value) {
          case 0:
            Modular.to.navigate("/");
            break;
          case 1:
            Modular.to.navigate('/training_builder');
            break;
          case 2:
            Modular.to.navigate('/exercise_view');
            break;
        }
      },
    );
  }
}
