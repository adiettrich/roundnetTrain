import 'package:app/Home/navigationBar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Roundnet Train")),
      body: const Center(
        child: Text("Hallo"),
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
