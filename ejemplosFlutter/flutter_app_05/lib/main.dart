import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Información Personal')),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/6623/6623974.png'),
                  ),
                  Image(
                    image: NetworkImage('./images/kawasaki.webp'),
                    width: 300,
                    height: 300,
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Juan Pablo'),
                    subtitle: Text('Nombre'),
                    leading: Icon(Icons.account_circle_rounded),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Rios Aristizabal'),
                    subtitle: Text('Apellidos'),
                    leading: Icon(Icons.account_circle_outlined),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('3134605139'),
                    subtitle: Text('Teléfono'),
                    leading: Icon(Icons.call),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Carrera 19 # 25-23'),
                    subtitle: Text('Dirección'),
                    leading: Icon(Icons.location_on),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('SENA - CPIC'),
                    subtitle: Text('Empresa'),
                    leading: Icon(Icons.apartment),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('17001'),
                    subtitle: Text('Codigo Postal'),
                    leading: Icon(Icons.app_registration_outlined),
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
