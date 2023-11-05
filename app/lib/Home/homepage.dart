import 'package:app/home/homescreen.dart';
import 'package:app/home/navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Roundnet Train")),
      body: const MyHomeScreen(),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
