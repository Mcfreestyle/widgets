import 'package:flutter/material.dart';
import 'package:widgets/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesiones',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      // theme: ThemeData(
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),
      home: const Menu(),
    );
  }
}
