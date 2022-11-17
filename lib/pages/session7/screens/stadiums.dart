import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:widgets/pages/session7/widgets/stadium.dart';

class Stadiums extends StatefulWidget {
  const Stadiums({super.key});

  @override
  State<Stadiums> createState() => _StadiumsState();
}

class _StadiumsState extends State<Stadiums> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://images.performgroup.com/di/library/omnisport/45/e5/qatar-cropped_9npol7zw8j1l1jylpsmj9e7l4.jpg?t=1386538427',
      'title': 'ESTADIO AL BAYT',
      'description':
          'Este recinto de la ciudad que tiene cerca de 32.000 habitantes, ubicada en la costa norte del país, será el escenario del partido inaugural de la Copa del Mundo, el 20 de noviembre. Albergará también un partido de octavos, otro de cuartos y una de las dos semifinales. Fue inaugurado en junio de 2020.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/omnisport/db/38/lusailstadium-cropped_6cb4uc587cmy183kqao44hka8.jpg?t=-1254623265',
      'title': 'ESTADIO ICÓNICO DE LUSAIL',
      'description':
          'La cancha ubicada en el municipio de Al Daayen será la sede de seis encuentros de la ronda de grupos, uno de cada fase eliminatoria y, nada menos, de la final por el título el 18 de diciembre. En 2010 se presentó el proyecto y en 2018, su diseño definitivo, con un techo cubierto por paneles solares.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/omnisport/f6/f9/al-wakrah-stadium_13oplz20536n01gpn6vlucvnsf.jpg?t=-416511956',
      'title': 'ESTADIO AL JANOUB',
      'description':
          'Situado en la ciudad de Al Wakrah, ubicada a unos 23 kilómetros de Doha y la cual tiene alrededor de 88.000 habitantes, este recinto fue inaugurado en mayo de 2019. En él se utiliza también una pista de atletismo. Allí habrá partidos de fase de grupos y octavos de final.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/group_content_la/3a/16/974-stadium-united-arab-emirates-v-syria-fifa-arab-cup-qatar-11302021_1osv0n1zomzns16unw7uk4ztlj.jpg?t=-602538969',
      'title': 'ESTADIO 974',
      'description':
          'La construcción de este estadio finalizó el año pasado y pudo inaugurarse el 30 de noviembre. También conocido como Estadio Ras Abu Aboud, albergará seis encuentros de la fase de grupos y otro de octavos de final. Se informó que tras el Mundial será desmontado.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/group_content_la/8a/8e/al-thumama-stadium-qatar-v-algeria-semifinal-fifa-arab-cup-qatar-12152021_1byh2rb5ioz5x1fxedreuexb80.jpg?t=-601758393',
      'title': 'ESTADIO AL THUMAMA',
      'description':
          'También ubicado en el municipio de Ad Dawhah, como el 974, este recinto fue inaugurado el 22 de octubre de 2021 para la final de la Copa del Emir entre Al-Rayyan y Al-Sadd. Tendrá seis partidos de la fase de grupos, uno de octavos y otro de cuartos de final.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/omnisport/c5/a4/khalifa-international-stadium-cropped_u8749e8b0t9l1traaq1zgemsa.jpg?t=-532367458',
      'title': 'ESTADIO INTERNACIONAL KHALIFA',
      'description':
          'El más antigüo de los estadios, construido en 1976 y renovado en 2017, es un multiusos que tendrá seis juegos de la fase de grupos, uno de octavos y el encuentro por el tercer puesto.'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/group_content_la/e1/c5/education-city-stadium-in-rayyan-03302022_1jzb83znl0j9r1xdll5ry8jm7c.jpg?t=-600810969',
      'title': 'ESTADIO CIUDAD DE LA EDUCACIÓN',
      'description':
          'Se encuentra en el seno de la ciudad universitaria, se terminó de construir en junio de 2020 y será el escenario de seis partidos de fase de grupos, uno de octavos y otro de cuartos. Luego de la Copa del Mundo se reducirá su capacidad'
    },
    {
      'img':
          'https://images.performgroup.com/di/library/group_content_la/a5/96/general-views-of-ahmed-bin-ali-stadium-12222021_fogkteppnp4z1gzi4b2s6grkm.jpg?t=-600435377',
      'title': 'ESTADIO AHMED BIN ALI',
      'description':
          'El recinto que fuera sede de los Juegos Asiáticos de 2006 y en 2011 una de las de la Copa Asiática de fútbol está ubicado a 20 kilómetros de Doha y albergará partidos de la fase de grupos y de las eliminatorias de octavos de final. Tuvo una remodelación en 2019.'
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontFamily: 'Qatar'),
          button: TextStyle(fontFamily: 'Qatar'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Estadios de Qatar',
            style: TextStyle(fontFamily: 'Qatar'),
          ),
          backgroundColor: const Color.fromARGB(255, 167, 44, 74),
          centerTitle: true,
        ),
        body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (BuildContext context, int index) {
            final item = data[index];
            return Stadium(
              img: item['img'],
              title: item['title'],
              description: item['description'],
            );
          },
        ),
      ),
    );
  }
}
