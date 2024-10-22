import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return MaterialApp(
      title: 'Widgets basicos Flutter.',
      home: Column(
        children: [
          const Text(overflow: TextOverflow.fade,
          maxLines: 1,'Lenguajes de Programación.'),
          const Icon(
            Icons.add_home_work_rounded,
            color: Color.fromARGB(255, 54, 233, 30),
            size: 100,
            semanticLabel: 'Home',
          ),
          const Text('Dart.'),
          const Text('JavaScript.'),
          const Text('HTML.'),
          const Text('Python.'),
          const Text('SQL.'),
          const Text('Java.'),
          const Text('C#.'),
          const Text('C++.'),
          const Text('PHP.'),
          const Text('Ruby.'),
          const Text('Boton:'),
          ElevatedButton(onPressed: (){},
            style: estilos,
            child: const Text('Enviar'),
          ),
          const Text('Filled:'),
          FilledButton(onPressed: (){}, 
          style: estilos,
          child: const Text('Enviar')
          ),
          const Text('Filled tonal:'),
          FilledButton.tonal(onPressed: (){},
          style: estilos, 
          child: const Text('Enviar')
          ),
          const Text('Image Internet:'),
          Image.network('https://static.wixstatic.com/media/b4a6cf_56cffd23c2ea4f9891e9ec70e8e202f4~mv2.png/v1/fill/w_480,h_479,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b4a6cf_56cffd23c2ea4f9891e9ec70e8e202f4~mv2.png'),
          const Text('Image Local:'),
          Image.network('./images/burpy.webp'),
        ],
      ),
    );
  }
}