import 'package:flutter/material.dart';
import 'package:widgets/pages/session7/screens/scroll.dart';
import 'package:widgets/pages/session7/screens/stadiums.dart';

class Home7 extends StatelessWidget {
  const Home7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 7'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Pantalla con scroll estilo tik tok',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScrollScreen()),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Reto: Estadio de Qatar',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Stadiums()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
