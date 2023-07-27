// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(Jokenpo());
}

class Jokenpo extends StatefulWidget {
  const Jokenpo({super.key});

  @override
  State<Jokenpo> createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jokenpo'),
        ),
        body: Container(),
      ),
    );
  }
}
