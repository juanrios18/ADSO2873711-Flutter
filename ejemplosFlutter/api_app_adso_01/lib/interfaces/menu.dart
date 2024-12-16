import 'package:api_app_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/reqresApi.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("Inicio"),
            leading: const Icon(Icons.star),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Get.back();
              miControlador.setTitulo("Consumo de APIS - 01");
              miControlador.setPaginas(0);
            },
          ),
          ListTile(
            title: const Text("Lista Usuarios"),
            leading: const Icon(Icons.people),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              Get.back();
              miControlador.setTitulo("Lista Usuarios - Reqres.in");
              final response = await obtenerUsuario();
              //se esta asignando la lista que llega de la api
              miControlador.setListaUsuariosReqRes(response["data"]);
              //print(response["data"]);
              miControlador.setPaginas(1);
            },
          )
        ],
      ),
    );
  }
}
