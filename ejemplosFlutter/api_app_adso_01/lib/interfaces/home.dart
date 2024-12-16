import 'package:api_app_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      appBar: AppBar(
        title: Center(child: Text(miControlador.Titulo)),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: opcionPaginas[miControlador.Pagina],
      drawer: const Menu(),
    ));
  }
}