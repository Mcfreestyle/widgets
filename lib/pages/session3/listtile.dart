import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text('Componentes de mi hardware'),
        ),
        body: ListView(
          children: const [
            Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/processor.png'),
                  width: 30,
                  height: 30,
                  fit: BoxFit.scaleDown,
                ),
                title: Text('Procesador AMD A8-6410'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage("assets/ram.png"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.scaleDown,
                ),
                title: Text('Memoria Ram 4GB'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage('assets/ssd.png'),
                  width: 30,
                  height: 30,
                  fit: BoxFit.scaleDown,
                ),
                title: Text('SSD 250GB'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage("assets/hdd.webp"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.scaleDown,
                ),
                title: Text('HDD 500GB'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image(
                  image: AssetImage("assets/graphic.jpg"),
                  width: 30,
                  height: 30,
                  fit: BoxFit.scaleDown,
                ),
                title: Text('Radeon R5 Graphics'),
              ),
            ),
          ],
        ));
  }
}
