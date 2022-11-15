import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reseat;

  const Buttons(
      {super.key,
      required this.increase,
      required this.decrease,
      required this.reseat});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 93, 248, 4),
          heroTag: const Text('btn1'),
          tooltip: 'Disminuir',
          child: const Icon(
            Icons.remove_circle_outline_rounded,
            color: Color.fromARGB(255, 77, 138, 108),
          ),
          onPressed: () => decrease(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 93, 248, 4),
          heroTag: const Text('btn2'),
          tooltip: 'Resetear',
          child: const Icon(
            Icons.restore_sharp,
            color: Color.fromARGB(255, 77, 138, 108),
          ),
          onPressed: () => reseat(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 93, 248, 4),
          heroTag: const Text('btn3'),
          tooltip: 'Aumentar',
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 77, 138, 108),
          ),
          onPressed: () => increase(),
        ),
      ],
    );
  }
}
