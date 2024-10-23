import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Trabajo con Grids')),
            backgroundColor: Colors.yellow,
            foregroundColor: const Color.fromARGB(255, 70, 70, 70),
          ),
          body: Container(
            color: const Color.fromARGB(255, 231, 175, 92),
            child: GridView.count(
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
              crossAxisCount: 2, // Cantidad de elementos por fila
              children: const [
                Card(
                  child: Column(
                    children: [
                      Text('Tarjeta 1'),
                      Text('ADSO'),
                      Text('2873711'),
                      Icon(Icons.add_card)
                    ],
                  ),
                ),
                Card(
                  child: Text('Tarjeta 2'),
                ),
                Card(
                  child: Text('Tarjeta 3'),
                ),
                Card(
                  child: Text('Tarjeta 4'),
                ),
                Card(
                  child: Text('Tarjeta 5'),
                ),
                Card(
                  child: Text('Tarjeta 6'),
                ),
                Card(
                  child: Text('Tarjeta 7'),
                ),
                Card(
                  child: Text('Tarjeta 8'),
                ),
                Card(
                  child: Text('Tarjeta 9'),
                ),
                Card(
                  child: Text('Tarjeta 10'),
                ),
              ],
            ),
          )),
    );
  }
}
