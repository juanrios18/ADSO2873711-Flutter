import 'package:flutter/material.dart';
import '../data/perfilData.dart';     

class PerfilPersonal extends StatefulWidget {
  const PerfilPersonal({super.key});

  @override
  State<PerfilPersonal> createState() => _PerfilPersonalState();
}

class _PerfilPersonalState extends State<PerfilPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Información Personal")),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,  // Hace que el GridView tome solo el espacio necesario.
            physics:const NeverScrollableScrollPhysics(),  // Desactiva el scroll interno del GridView.
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget> [
              const Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image(
                      image: NetworkImage("assets/images/perfil.jpeg"),
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(perfilDataList['nombre'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.person),
                      ),
                     Divider(
                        thickness: 1,       // Grosor de la línea (Por defecto viene de 0.5)
                        height: 0,          // Espacio por encima y debajo del divisor (Por defecto viene de 16.0)
                        indent: 15,         // Espacio antes de la línea (hace que la línea empiece más a la derecha)(Ambos por defrecto es de 0.0 ocupa todo el ancho del contenedor)
                        endIndent: 20,      // Espacio después de la línea (hace que la línea termine más antes de llegar al borde)
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(perfilDataList['celular'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.phone_android),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(perfilDataList['direccion'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.location_on),
                      ),
                      Divider(
                        //thickness: 1,    
                        height: 0,        
                        indent: 15,   
                        endIndent: 20, 
                        color: Colors.green[500],
                      ),
                      ListTile(
                        title: Text(perfilDataList['gitHub'],
                          style:const TextStyle(fontSize: 12),
                        ),
                        leading:const Icon(Icons.mail),
                      ),
                    ],
                  ),
                ), 
              ),  
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      const Text('Dart',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 4,
                        color: Colors.green,
                        backgroundColor: Colors.grey[300],
                      ),
                      const SizedBox(height: 8),

                      const Text('Flutter',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.7, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('JavaScript',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('PHP',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('Python',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.75, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('React',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('SQL',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.green, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      const Text('Reading',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 4,
                        color: Colors.blue,
                        backgroundColor: Colors.grey[300],
                      ),
                      const SizedBox(height: 8),

                      const Text('Speaking',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.7, 
                        minHeight: 4, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('Listening',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),

                      const Text('Writing',
                        style: TextStyle(fontSize: 11),
                      ),
                      LinearProgressIndicator(
                        value: 0.9, 
                        minHeight: 4, 
                        color: Colors.blue, 
                        backgroundColor: Colors.grey[300], 
                      ),
                      const SizedBox(height: 8,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Card(
            shadowColor:const Color.fromARGB(255, 0, 0, 0),
            elevation: 20,
            margin:const EdgeInsets.all(7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  perfilDataList["perfil"],
                  style:const  TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}