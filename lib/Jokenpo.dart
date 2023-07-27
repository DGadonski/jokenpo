// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, prefer_final_fields, unnecessary_this

import 'dart:math';


import 'package:flutter/material.dart';

class Jokenpo extends StatefulWidget {
  const Jokenpo({super.key});

  @override
  State<Jokenpo> createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  var _imagemApp = AssetImage('images/padrao.png');
  var _mensagem = 'Escolha uma opção abaixo:';

  _opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];

    switch (escolhaApp) {
      case 'pedra':
        setState(() {
          this._imagemApp = AssetImage('images/pedra.png');
        });
        break;
      case 'papel':
        setState(() {
          this._imagemApp = AssetImage('images/papel.png');
        });
        break;
      case 'tesoura':
        setState(() {
          this._imagemApp = AssetImage('images/tesoura.png');
        });
      default:
        setState(() {
          this._imagemApp = AssetImage('images/padrao.png');
        });
    }

    if ((escolhaUsuario == 'pedra' && escolhaApp == 'tesoura') ||
        (escolhaUsuario == 'tesoura' && escolhaApp == 'papel') ||
        (escolhaUsuario == 'papel' && escolhaApp == 'pedra')) {
      this._mensagem = 'Você ganhou :)';
    } else if ((escolhaApp == 'pedra' && escolhaUsuario == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUsuario == 'papel') ||
        (escolhaApp == 'papel' && escolhaUsuario == 'pedra')) {
      this._mensagem = 'Você perdeu :(';
    } else {
      this._mensagem = 'Empate!!!';
    }
  }

  _refresh() {
    setState(() {
      this._mensagem = 'Escolha uma opção abaixo:';
      this._imagemApp = AssetImage('images/padrao.png');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Escolha do App:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Image(image: _imagemApp),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(this._mensagem,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
              child: Image.asset('images/pedra.png', height: 100),
              onTap: () => _opcaoSelecionada('pedra')),
          GestureDetector(
              child: Image.asset('images/papel.png', height: 100),
              onTap: () => _opcaoSelecionada('papel')),
          GestureDetector(
              child: Image.asset('images/tesoura.png', height: 100),
              onTap: () => _opcaoSelecionada('tesoura')),
        ]),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 64, 16, 16),
          child: IconButton(
            iconSize: 50,
            onPressed: _refresh, icon: Icon(Icons.refresh)),
        )
      ]),
    );
  }
}
