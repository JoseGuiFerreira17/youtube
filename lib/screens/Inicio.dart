// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Início",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}