import 'package:flutter/material.dart';
import 'package:widgets/pages/session3/home.dart';
import 'package:widgets/pages/session4/home.dart';
import 'package:widgets/pages/session5/home.dart';
import 'package:widgets/pages/session6/home.dart';
import 'package:widgets/pages/session7/screens/home.dart';
import 'package:widgets/pages/session8/screens/home.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesiones'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonWidget(
              name: 'Sesion 3',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home3()),
                );
              },
            ),
            buttonWidget(
              name: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home4()),
                );
              },
            ),
            buttonWidget(
              name: 'Sesion 5',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home5()),
                );
              },
            ),
            buttonWidget(
              name: 'Sesion 6',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home6()),
                );
              },
            ),
            buttonWidget(
              name: 'Sesion 7',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home7()),
                );
              },
            ),
            buttonWidget(
              name: 'Sesion 8',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home8()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buttonWidget({String? name, Function()? onPressed}) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: const Color.fromARGB(255, 6, 59, 103),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
