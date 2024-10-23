import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turístocos',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sitios Turísticos')),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: const Color.fromARGB(255, 238, 216, 121),
              shadowColor: Colors.brown,
              elevation: 5,
              margin: const EdgeInsets.all(10),
              surfaceTintColor: Colors.grey,
              child: ListTile(
                title: Text(sitiosTuristicos[index]),
                subtitle: Text('Sitio Turistico N°${index + 1}'),
                leading: const Icon(Icons.location_on),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // print(
                  //     'Tab sobre el sitio turistico ${sitiosTuristicos[index]}');
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sitio Turistico N°${index + 1}'),
                          content: Text(sitiosTuristicos[index]),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cerrar'))
                          ],
                        );
                      });
                },
              ),
            );
          },
        ),
        //     ListView.separated(
        //   itemCount: sitiosTuristicos.length,
        //   separatorBuilder: (BuildContext context, int index) {
        //     return const Divider();
        //   },
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text(' ${sitiosTuristicos[index]} '),
        //       subtitle: Text('Sitio Turistico ${index + 1}'),
        //       leading: const Icon(Icons.location_on),
        //     );
        //   },
        // ),
      ),
    );
  }
}

List<String> sitiosTuristicos = [
  "La Gran Muralla China",
  "Machu Picchu",
  "Taj Mahal",
  "Estatua de la Libertad",
  "Coliseo",
  "Pirámides de Giza",
  "Torre Eiffel",
  "Sagrada Familia",
  "Gran Cañón",
  "Stonehenge",
  "Chichén Itzá",
  "Montañas Rocosas",
  "Cataratas del Iguazú",
  "Sídney Opera House",
  "Acropolis",
  "Times Square",
  "Catedral de Notre-Dame",
  "Parque Nacional Yellowstone",
  "Venecia",
  "Torre de Pisa",
  "Santorini",
  "La Habana Vieja",
  "Parque Güell",
  "Museo del Louvre",
  "Catedral de San Basilio",
  "Ruinas de Petra",
  "Plaza de Mayo",
  "Catedral de San Pedro",
  "Puente de Brooklyn",
  "Montañas de los Alpes",
  "Castillo de Neuschwanstein",
  "Islas Maldivas",
  "Isla de Pascua",
  "Gran Barrera de Coral",
  "Cataratas de Niágara",
  "Parque Nacional Banff",
  "Torre de Londres",
  "Alhambra",
  "Playa de Copacabana",
  "Catedral de Colonia",
  "Bahía de Ha-Long",
  "Palacio de Versalles",
  "Puerta de Brandeburgo",
  "Templo de Karnak",
  "Mercado de Marrakech",
  "Las Ruinas de Angkor",
  "Cerro Aconcagua",
  "Laguna Colorada",
  "Mercado de Pike Place",
  "Cataratas de Angel",
  "Santuario de Apolo",
  "Bañados del Este",
  "Cabo de Hornos",
  "Parque Nacional Torres del Paine",
  "Catedral de Milán",
  "Museo Británico",
  "Costa Amalfitana",
  "Palacio de Buckingham",
  "Castillo de Chambord",
  "Palacio de Topkapi",
  "Playa de Waikiki",
  "Mount Fuji",
  "Islas Galápagos",
  "Fjords",
  "Catedral de San Marcos",
  "La ciudad antigua de Dubrovnik",
  "Los Ángeles",
  "Dubai Mall",
  "Ruinas de Pompeya",
  "Playa de Bondi",
  "Plaza de San Pedro",
  "Lago Titicaca",
  "Castillo de Edimburgo",
  "Parque Nacional Yosemite",
  "La ciudad antigua de Éfeso",
  "Estatuas de Moai",
  "Montañas de Dolomitas",
  "Cataratas de Krka",
  "Catedral de San Salvador",
  "Santuario de Lourdes",
  "Pirámides de Teotihuacán",
  "Cascada de Seljalandsfoss",
  "Templo de Angkor Wat",
  "Muralla de Dubrovnik",
  "Centro Histórico de México City",
  "Isla de Santorini",
  "Cerro de la Silla",
  "Lago Baikal",
  "Parque Nacional Kruger",
  "Bahía de Sydney",
  "El Louvre",
  "Castillo de Neuschwanstein",
  "Catedral de San Juan Bautista",
  "El Coliseo",
  "Templo de los Guerreros",
  "Playa de las Catedrales",
  "Parque Nacional de los Glaciares",
  "El Gran Cañón",
  "Los Mercados de Bangkok",
  "Las Torres Gemelas"
];
