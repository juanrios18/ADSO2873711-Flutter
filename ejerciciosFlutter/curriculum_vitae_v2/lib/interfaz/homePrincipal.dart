import 'package:curriculum_vitae_v2/experienciaLaboral/principalExperienciaLaboral.dart';
import 'package:curriculum_vitae_v2/main.dart';
import 'package:curriculum_vitae_v2/perfilPersonal/perfilPersonal.dart';
import 'package:curriculum_vitae_v2/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    Scaffold(
      appBar: AppBar(
        title: Center(child:Text(miControlador.Titulo)), 
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: const Center(
        child: Image(image: NetworkImage("assets/images/logoFondo.png")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage('assets/images/perfil.jpeg'),
                ),
              ),
            ),
            Divider(
              color: Utils.primaryColor, height: 2),
            ListTile(
              title:const Text('Home'),
              leading:const Icon(Icons.home),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Curriculum Vitae V2 - ADSO");
              },
            ),
            ListTile(
              title:const Text('Información Personal'),
              leading:const Icon(Icons.person),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                //Navigator.pop(context);
                miControlador.cambiarTitulo("Información Personal");
                Get.to(const PerfilPersonal());
              },
            ),
            ListTile(
              title:const Text('Educación Formal'),
              leading:const Icon(Icons.school),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Educación Formal");
                Get.defaultDialog(
                  title: 'Alerta',
                  middleText: 'Esta sección pronto será publicada...',
                  onConfirm: () {

                  },
                  onCancel:() {
                    
                  },
                );
              },
            ),
            ListTile(
              title:const Text('Formación Continuada'),
              leading:const Icon(Icons.book),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Formación Continuada");
                Get.snackbar('Atención!', 'Esta seccón aún no está disponible',
                backgroundColor: Colors.red[300],
                colorText: Colors.white,
                icon:const Icon(Icons.dangerous));
              },
            ),
            ListTile(
              title:const Text('Publicaciones'),
              leading:const Icon(Icons.newspaper),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Publicaciones");
              },
            ),
            ListTile(
              title:const Text('Experiencia Laboral'),
              leading:const Icon(Icons.work_outline),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                miControlador.cambiarTitulo("Experiencia Laboral");
                //Navigator.pop(context);
                Get.to(const PrincipalExperienciaLaboral());
              },
            ),
            ListTile(
              title:const Text('Referencias'),
              leading:const Icon(Icons.people),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Referencias");
              },
            ),
            ListTile(
              title:const Text('Acerca de'),
              leading:const Icon(Icons.person),
              trailing:const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
                miControlador.cambiarTitulo("Acerca de");
              },
            ),
          ],
        ),
      ),
    ));
  }
}