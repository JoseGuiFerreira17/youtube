// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube/screens/Biblioteca.dart';
import 'package:youtube/screens/EmAlta.dart';
import 'package:youtube/screens/Incricoes.dart';
import 'package:youtube/screens/Inicio.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> _telas = [
      Inicio(),
      EmAlta(),
      Incricoes(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: ()=>{}, 
            icon: const Icon(Icons.videocam)
          ),
          IconButton(
            onPressed: ()=>{}, 
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: ()=>{}, 
            icon: const Icon(Icons.account_circle)
          )
        ],
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: 'Em alta'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Inscrições'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Biblioteca'
          ),
        ]
      ),
    );
  }
}