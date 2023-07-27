// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Jokenpo extends StatefulWidget {
  const Jokenpo({super.key});

  @override
  State<Jokenpo> createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jokenpo'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Escolha do App:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )),
            ),
            Image.asset('images/padrao.png'),
            Text('Você perdeu :('),
            Row(
              children: [
               Image.asset('images/pedra.png'),
               Image.asset('images/papel.png'),
               Image.asset('images/tesoura.png'),              
              ]
            )
          ],
        ),
      );
  }
}