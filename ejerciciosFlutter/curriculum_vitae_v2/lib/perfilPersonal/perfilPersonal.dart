import 'package:curriculum_vitae_v2/data/perfilData.dart';
import 'package:flutter/material.dart';

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
        title: const Center(child: Text('Información Personal')),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap:
                true, // Hace que el GridView tome solo el espacio necesario
            physics:
                const NeverScrollableScrollPhysics(), //Desactiva el scroll interno del GridView
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: const <Widget>[
              Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image(
                      image: NetworkImage('assets/images/perfil.jpeg'),
                      fit: BoxFit.cover,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
              ),
              Card(child: Text('Información Personal')),
              Card(),
              Card(),
            ],
          ),
          ListTile(title: Text(perfilDataList['perfil'])),
        ],
      ),
    );
  }
}
