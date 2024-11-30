import 'package:get/get.dart';

class Mycontroller extends GetxController {
  final _titulo = 'Curriculum Vitae V2 - ADSO'.obs;
  final _listaExperienciLaboral = [].obs;

  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String, dynamic> item){
    _listaExperienciLaboral.add(item);
  }
  void cambiarListaExperienciaLaboral(List item){
    _listaExperienciLaboral.value = item;
  }

  String get Titulo => _titulo.value;
  List get ListaExperienciaLaboral => _listaExperienciLaboral.value;
}