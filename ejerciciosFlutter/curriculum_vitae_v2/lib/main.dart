import 'package:curriculum_vitae_v2/controllers/myController.dart';
import 'package:curriculum_vitae_v2/interfaz/principal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/experienciaData.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  runApp(const Principal());
}

Mycontroller miControlador = Get.find(); // Crea instancia de la clase MyController