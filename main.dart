import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Descripción',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Disponible en: PS4-PS5',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 166, 0),
          ),
          const Text('8.7'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.share, 'Compartir'),
        _buildButtonColumn(color, Icons.favorite, 'Favoritos'),
        _buildButtonColumn(color, Icons.control_point, 'Más'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Sony Interactive Entertainment, Insomniac Games y Marvel se unieron para crear una auténtica aventura de Spider-Man. Este no es el Spider-Man que conocías o que habías visto. Estás ante un Peter Parker mucho más experimentado en la lucha contra el crimen organizado en la Nueva York de Marvel. Al mismo tiempo, lucha para equilibrar su caótica vida personal y su carrera mientras carga con el destino de millones de neoyorquinos sobre sus hombros. '
        '',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Marvel´s Spider Man'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/spiderman.jpg',
              // 'images/alambre.jpg',
              // width: 720,
              // height: 899,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
