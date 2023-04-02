import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: "First Item", icon: Icon(Icons.abc_sharp)),
        BottomNavigationBarItem(
            label: "Second Item", icon: Icon(Icons.abc_sharp))
      ],
      onTap: (value) => onClick(value),
    );
  }

  void onClick(var value) {
    //TODO
  }
}
