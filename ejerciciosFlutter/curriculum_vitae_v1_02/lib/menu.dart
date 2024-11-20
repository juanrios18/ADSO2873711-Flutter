import 'package:curriculum_vitae_1_02/data/experienciaLboralData.dart';
import 'package:flutter/material.dart';
import 'data/FormacionFormalData.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Curriculum Vitae V1')),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('./images/perfil.jpeg'),
                ),
                const Divider(
                  color: Color.fromARGB(255, 140, 180, 141),
                  thickness: 2,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Información Personal'),
                    leading: const Icon(Icons.person),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Formación Académica'),
                    leading: const Icon(Icons.school),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('Formación académica'),
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                              ),
                              body: ListView.separated(
                                itemCount: formacionAcademicaLista.length,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const Divider();
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text(formacionAcademicaLista[index]
                                        ['titulo']),
                                    subtitle: Text(
                                      formacionAcademicaLista[index]
                                          ['tipoEstudio'],
                                      style: TextStyle(
                                          color: formacionAcademicaLista[index]
                                              ['color']),
                                    ),
                                    leading: Text(formacionAcademicaLista[index]
                                            ['anioFinalizacion']
                                        .toString()),
                                  );
                                },
                              ),
                            );
                          });
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Certificaciones y Cursos'),
                    leading: const Icon(Icons.science),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Experiencia Laboral'),
                    leading: const Icon(Icons.factory),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: const Text('Experiencia Laboral'),
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                            ),
                            body: ListView.separated(
                              itemCount: experienciaLaboralLista.length,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider();
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(
                                      experienciaLaboralLista[index]['titulo']),
                                  trailing: Icon(experienciaLaboralLista[index]
                                      ['iconoCategoria']),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        experienciaLaboralLista[index]
                                            ['categoria'],
                                        style: TextStyle(
                                          color: experienciaLaboralLista[index]
                                              ['colorCategoria'],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 4), // Espaciado entre textos
                                      Text(
                                        experienciaLaboralLista[index]
                                            ['funciones'],
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  leading: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Inicio: ${experienciaLaboralLista[index]['fechaInicio']}',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        'Fin: ${experienciaLaboralLista[index]['fechaFin']}',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Habilidades'),
                    leading: const Icon(Icons.task),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Proyectos destacados'),
                    leading: const Icon(Icons.star),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Idiomas'),
                    leading: const Icon(Icons.abc),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.green,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: const Text('Rereferencias personales'),
                    leading: const Icon(Icons.group),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
