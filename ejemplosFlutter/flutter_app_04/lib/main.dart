import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Información Personal'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            ListTile(
              title:Text('Juan Pablo Rios Aristizabal'),
              subtitle: Text('Nombre'),
              leading: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}