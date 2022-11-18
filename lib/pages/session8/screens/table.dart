import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.all(
          color: Colors.white,
        ),
        children: const [
          TableRow(children: [
            Text('fila1'),
            Text('fila1'),
            Text('fila1'),
            Text('fila1'),
          ]),
          TableRow(children: [
            Text('fila2'),
            Text('fila2'),
            Text('fila2'),
            Text('fila2'),
          ]),
          TableRow(children: [
            Text('fila3'),
            Text('fila3'),
            Text('fila3'),
            Text('fila3'),
          ]),
          TableRow(children: [
            Text('fila4'),
            Text('fila4'),
            Text('fila4'),
            Text('fila4'),
          ]),
          TableRow(children: [
            Text('fila5'),
            Text('fila5'),
            Text('fila5'),
            Text('fila5'),
          ]),
          TableRow(children: [
            Text('fila6'),
            Text('fila6'),
            Text('fila6'),
            Text('fila6'),
          ]),
        ],
      ),
    );
  }
}
