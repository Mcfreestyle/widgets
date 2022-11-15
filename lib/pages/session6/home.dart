import 'package:flutter/material.dart';
import 'package:widgets/pages/session6/widgets/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class Home6 extends StatefulWidget {
  const Home6({super.key});

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  int number = 0;

  void increaseNum() {
    setState(() {
      number++;
    });
  }

  void decreaseNum() {
    setState(() {
      number--;
    });
  }

  void reseatNum() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 255, 156),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 209, 87),
        title: Text(
          'Sesion 6',
          style: GoogleFonts.rubikBubbles(fontSize: 32.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 150,
                child: Image(
                  image: AssetImage('assets/perfil.jpg'),
                ),
              ),
              Text(
                'Nombre: Michael',
                style: GoogleFonts.bitter(fontSize: 20),
              ),
              Text(
                'Apellido: Chambilla',
                style: GoogleFonts.bitter(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Contador',
                style: GoogleFonts.lobster(fontSize: 38),
              ),
              Text(
                '$number',
                style: GoogleFonts.pacifico(fontSize: 60),
              ),
              const SizedBox(
                height: 10,
              ),
              Buttons(
                increase: () => increaseNum(),
                decrease: () => decreaseNum(),
                reseat: () => reseatNum(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
