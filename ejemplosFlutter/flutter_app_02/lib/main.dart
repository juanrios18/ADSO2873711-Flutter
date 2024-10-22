import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal()); // Aca se inicia y se lanza la aplicación.
}

class Principal extends StatelessWidget { // Se crea una clase que hereda de StatelessWidget para crear un Widget sin estado.
  const Principal({super.key}); // constructor de la clase Principal

  @override // Se sobreescribe el metodo build de la clase padre para generar la interfaz de usuario.
  Widget build(BuildContext context) {
    // Se retorna un Widget, en nuestro caso MaterialApp.
    return const MaterialApp(
      title: 'Mi primera App - ADSO2873711.',
      home: Text('Primera aplicación en Flutter\nJuan Pablo Rios Aristizabal\nADSO2873711\nCPIC - SENA'),
    );
  }
}