import 'package:curriculum_vitae_1_02/menu.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae V1',
      home: Menu()
    );
  }
}