import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:widgets/pages/session8/screens/scroll/navigation.dart';
import 'package:widgets/pages/session8/screens/instagram/navigation.dart';

class Home8 extends StatelessWidget {
  const Home8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 8'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWidget(
            text: 'Scroll',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyNavigation()),
              );
            },
          ),
          ButtonWidget(
            text: 'Instagram Reels',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InstagramNavigation()),
              );
            },
          )
        ],
      ),
    );
  }
}
