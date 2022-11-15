import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:widgets/pages/session4/textformfieldwidget.dart';
import 'package:widgets/pages/session4/emailpass.dart';
import 'package:widgets/pages/session4/dropdownbutton.dart';
import 'package:widgets/pages/session4/sliderwidget.dart';
import 'package:widgets/pages/session4/checkboxswitchwidget.dart';
import 'package:widgets/pages/session4/listviewwidget.dart';
import 'package:widgets/pages/session4/infintyscrollwidget.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Texfield',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextFormFieldWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailPassWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'DrowDownButton',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dropdownbuttonformfiel()),
                );
              },
            ),
            ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'CheckBox & Switches',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheboxSwitchWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'ListView',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Listviewidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Infinity Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Infinityscrollwidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
