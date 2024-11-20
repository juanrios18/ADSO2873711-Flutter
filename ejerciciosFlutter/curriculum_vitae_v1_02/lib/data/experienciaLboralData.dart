import 'package:flutter/material.dart';

List<Map<String, dynamic>> experienciaLaboralLista = [
  {
    'id': 1,
    'titulo': 'Desarrollador Frontend',
    'fechaInicio': '2020-01-15',
    'fechaFin': '2021-05-30',
    'categoria': 'Frontend',
    'colorCategoria': Colors.blue,
    'iconoCategoria': Icons.web,
    'funciones': 'Diseño e implementación de interfaces de usuario atractivas y funcionales, utilizando HTML, CSS, y frameworks como Angular.',
  },
  {
    'id': 2,
    'titulo': 'Desarrollador Backend',
    'fechaInicio': '2021-06-01',
    'fechaFin': '2022-09-30',
    'categoria': 'Backend',
    'colorCategoria': Colors.orange,
    'iconoCategoria': Icons.storage,
    'funciones': '''-Implementación de APIs RESTful en Node.js y Express para sistemas escalables.
-Desarrollo de microservicios para manejar datos complejos en tiempo real.
-Optimización de bases de datos relacionales y no relacionales como PostgreSQL y MongoDB.
    ''',
  },
  {
    'id': 3,
    'titulo': 'Desarrollador Móvil',
    'fechaInicio': '2022-10-01',
    'fechaFin': '2023-07-15',
    'categoria': 'Móvil',
    'colorCategoria': Colors.green,
    'iconoCategoria': Icons.phone_android,
    'funciones': '''-Desarrollo de aplicaciones móviles nativas para Android e iOS utilizando Flutter.
-Implementación de patrones de diseño como Bloc para manejo de estados.
-Publicación de aplicaciones en Google Play y App Store, garantizando alta calidad.
    ''',
  },
  {
    'id': 4,
    'titulo': 'Administrador de Sistemas',
    'fechaInicio': '2018-02-01',
    'fechaFin': '2019-12-31',
    'categoria': 'Infraestructura',
    'colorCategoria': Colors.grey,
    'iconoCategoria': Icons.settings,
    'funciones': '''-Mantenimiento y administración de servidores Linux y Windows.
-Configuración de redes y seguridad para entornos corporativos.
    ''',
  },
  {
    'id': 5,
    'titulo': 'Analista de Datos',
    'fechaInicio': '2023-08-01',
    'fechaFin': '2024-10-01',
    'categoria': 'Data',
    'colorCategoria': Colors.red,
    'iconoCategoria': Icons.analytics,
    'funciones': '''-Extracción, limpieza y análisis de datos usando Python y SQL.
-Desarrollo de dashboards interactivos con herramientas como Power BI y Tableau.
-Colaboración con equipos de negocio para proporcionar insights clave.
    ''',
  },
  {
    'id': 6,
    'titulo': 'DevOps Engineer',
    'fechaInicio': '2020-01-01',
    'fechaFin': '2021-12-31',
    'categoria': 'DevOps',
    'colorCategoria': Colors.teal,
    'iconoCategoria': Icons.cloud,
    'funciones': '''-Automatización de despliegues usando Jenkins y GitHub Actions.
-Implementación de contenedores Docker y orquestación con Kubernetes.
-Configuración y monitoreo en plataformas de nube como AWS y Azure.
    ''',
  },
  {
    'id': 7,
    'titulo': 'Desarrollador Full Stack',
    'fechaInicio': '2019-05-01',
    'fechaFin': '2020-12-31',
    'categoria': 'Full Stack',
    'colorCategoria': Colors.purple,
    'iconoCategoria': Icons.layers,
    'funciones': '''-Desarrollo completo de aplicaciones web utilizando React y Node.js.
-Integración de sistemas de autenticación OAuth y JWT.
-Implementación de pruebas unitarias y de integración.
    ''',
  },
  {
    'id': 8,
    'titulo': 'Ingeniero de Calidad',
    'fechaInicio': '2021-01-01',
    'fechaFin': '2022-06-30',
    'categoria': 'QA',
    'colorCategoria': Colors.pink,
    'iconoCategoria': Icons.bug_report,
    'funciones': '''-Creación de casos de prueba y ejecución en herramientas como Selenium.
-Garantía de estándares de calidad en software mediante pruebas manuales y automáticas.
    ''',
  },
  {
    'id': 9,
    'titulo': 'Diseñador UX/UI',
    'fechaInicio': '2017-06-01',
    'fechaFin': '2018-12-31',
    'categoria': 'Diseño',
    'colorCategoria': Colors.indigo,
    'iconoCategoria': Icons.design_services,
    'funciones': 'Diseño de interfaces centradas en el usuario para aplicaciones web y móviles, aplicando principios de usabilidad y accesibilidad.',
  },
  {
    'id': 10,
    'titulo': 'Consultor en Transformación Digital',
    'fechaInicio': '2020-02-01',
    'fechaFin': '2021-08-31',
    'categoria': 'Consultoría',
    'colorCategoria': Colors.brown,
    'iconoCategoria': Icons.lightbulb,
    'funciones': '''-Asesoramiento a empresas en estrategias de digitalización.
-Implementación de soluciones tecnológicas para mejorar procesos internos.
    ''',
  },
  {
    'id': 11,
    'titulo': 'Científico de Datos',
    'fechaInicio': '2019-03-01',
    'fechaFin': '2020-11-30',
    'categoria': 'Data',
    'colorCategoria': Colors.red,
    'iconoCategoria': Icons.analytics,
    'funciones': '''-Desarrollo de modelos predictivos utilizando machine learning.
-Limpieza y procesamiento de grandes volúmenes de datos.
    ''',
  },
  {
    'id': 12,
    'titulo': 'Arquitecto de Software',
    'fechaInicio': '2021-07-01',
    'fechaFin': '2023-05-15',
    'categoria': 'Arquitectura',
    'colorCategoria': Colors.deepOrange,
    'iconoCategoria': Icons.architecture,
    'funciones': '''-Diseño de arquitecturas de software escalables para aplicaciones críticas.
-Supervisión de implementación y alineación con requisitos técnicos.
    ''',
  },
  {
    'id': 13,
    'titulo': 'Especialista en Seguridad Informática',
    'fechaInicio': '2020-09-01',
    'fechaFin': '2021-12-31',
    'categoria': 'Seguridad',
    'colorCategoria': Colors.cyan,
    'iconoCategoria': Icons.security,
    'funciones': '''-Auditorías de seguridad en infraestructura y aplicaciones.
-Implementación de protocolos de cifrado y protección de datos.
    ''',
  },
  {
    'id': 14,
    'titulo': 'Desarrollador IoT',
    'fechaInicio': '2019-10-01',
    'fechaFin': '2020-09-30',
    'categoria': 'IoT',
    'colorCategoria': Colors.lightBlue,
    'iconoCategoria': Icons.router,
    'funciones': '''-Diseño de soluciones de IoT para dispositivos inteligentes.
-Integración con servicios en la nube para monitoreo remoto.
    ''',
  },
  {
    'id': 15,
    'titulo': 'Product Owner',
    'fechaInicio': '2021-11-01',
    'fechaFin': '2023-03-31',
    'categoria': 'Gestión',
    'colorCategoria': Colors.amber,
    'iconoCategoria': Icons.task,
    'funciones': '''-Gestión del backlog y priorización de tareas.
-Colaboración con equipos técnicos y de negocio para garantizar entregables.
    ''',
  },
  {
    'id': 16,
    'titulo': 'Ingeniero de Soporte',
    'fechaInicio': '2017-01-01',
    'fechaFin': '2018-12-31',
    'categoria': 'Soporte',
    'colorCategoria': Colors.lime,
    'iconoCategoria': Icons.support_agent,
    'funciones': '''-Resolución de incidentes técnicos en sistemas y aplicaciones.
-Capacitación a usuarios finales en el uso de herramientas corporativas.
    ''',
  },
  {
    'id': 17,
    'titulo': 'Scrum Master',
    'fechaInicio': '2019-08-01',
    'fechaFin': '2020-11-30',
    'categoria': 'Gestión',
    'colorCategoria': Colors.amber,
    'iconoCategoria': Icons.group_work,
    'funciones': '''-Facilitación de ceremonias ágiles y seguimiento de iteraciones.
-Garantía de que los equipos cumplan con las prácticas ágiles establecidas.
    ''',
  },
  {
    'id': 18,
    'titulo': 'Instructor de Programación',
    'fechaInicio': '2020-03-01',
    'fechaFin': '2021-06-30',
    'categoria': 'Educación',
    'colorCategoria': Colors.blueGrey,
    'iconoCategoria': Icons.school,
    'funciones': '''-Enseñanza de fundamentos de programación en lenguajes como Python y Java.
-Creación de material didáctico interactivo para estudiantes.
    ''',
  },
  {
    'id': 19,
    'titulo': 'Ingeniero en Automatización',
    'fechaInicio': '2022-04-01',
    'fechaFin': '2023-07-31',
    'categoria': 'Automatización',
    'colorCategoria': Colors.yellow,
    'iconoCategoria': Icons.electrical_services,
    'funciones': '''-Desarrollo de soluciones automatizadas para líneas de producción.
-Mantenimiento de sistemas de control y sensores industriales.
    ''',
  },
  {
    'id': 20,
    'titulo': 'Gerente de Proyectos',
    'fechaInicio': '2020-08-01',
    'fechaFin': '2023-01-31',
    'categoria': 'Gestión',
    'colorCategoria': Colors.orangeAccent,
    'iconoCategoria': Icons.event_note,
    'funciones': '''-Gestión de proyectos tecnológicos desde su planificación hasta la entrega.
-Coordinación de equipos multidisciplinarios y manejo de recursos.
    ''',
  },
];