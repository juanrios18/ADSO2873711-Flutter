import 'package:curriculum_vitae_v2/controllers/myController.dart';
import 'package:curriculum_vitae_v2/interfaz/principal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/educacionFormalData.dart';
import 'data/experienciaData.dart';
import 'data/formacionContinuadaData.dart';
import 'data/publicacionesData.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  miControlador.cambiarListaEducacionFormal(listaEducacionFormal);
  miControlador.cambiarListaFormacionContinuada(listaFormacionContinuada);
  miControlador.cambiarListaPublicaciones(listaPublicaciones);
  runApp(const Principal());
}

Mycontroller miControlador = Get.find(); // Crea instancia de la clase MyController