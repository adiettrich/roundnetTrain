import 'package:flutter/material.dart';

import 'Home/homepage.dart';

class TrainApp extends StatelessWidget {
  const TrainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
