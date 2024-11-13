import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae V1',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Curriculum Vitae V1')),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        './images/perfil.jpeg'),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 140, 180, 141),
                    thickness: 2,
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Información Personal'),
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Formación Académica'),
                        leading: Icon(Icons.school),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Certificaciones y Cursos'),
                        leading: Icon(Icons.science),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Experiencia Laboral'),
                        leading: Icon(Icons.factory),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Habilidades'),
                        leading: Icon(Icons.task),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Proyectos destacados'),
                        leading: Icon(Icons.star),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Idiomas'),
                        leading: Icon(Icons.abc),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    margin: EdgeInsets.all(4),
                    child: ListTile(
                        title: Text('Rereferencias personales'),
                        leading: Icon(Icons.group),
                        trailing: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}