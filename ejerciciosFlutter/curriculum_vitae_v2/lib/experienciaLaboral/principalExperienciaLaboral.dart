import 'package:curriculum_vitae_v2/experienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:curriculum_vitae_v2/experienciaLaboral/viewExperienciaLaboral.dart';
import 'package:curriculum_vitae_v2/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class PrincipalExperienciaLaboral extends StatefulWidget {
  const PrincipalExperienciaLaboral({super.key});

  @override
  State<PrincipalExperienciaLaboral> createState() => _PrincipalExperienciaLaboralState();
}

class _PrincipalExperienciaLaboralState extends State<PrincipalExperienciaLaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Experiencia Laboral")),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
        child:const Icon(Icons.add),
        onPressed: (){
          showModalAddEditExperiencia(context);
      }),
      body: ListView.builder(
        itemCount: miControlador.ListaExperienciaLaboral.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"],
                style: TextStyle(color: miControlador.ListaExperienciaLaboral[index]["colorCategoria"],
                fontWeight: FontWeight.bold,
                ),
              ),
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                  'Inicio: ${miControlador.ListaExperienciaLaboral[index]['fechaInicio']}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                  'Fin: ${miControlador.ListaExperienciaLaboral[index]['fechaFin']}',
                  style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){
                        // Lógica para visualizar el detalle de una experiencia laboral.
                        viewExperienciaLaboral(context, miControlador.ListaExperienciaLaboral[index]);
                      }, icon:const Icon(Icons.search)),
                      IconButton(onPressed: (){

                      }, icon:const Icon(Icons.edit)),
                      IconButton(onPressed: (){
                      }, icon:const Icon(Icons.delete)),
                    ],
                  ),
            ),
          );
        },
      ),
    ));
  }
}