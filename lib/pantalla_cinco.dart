import 'dart:ui';

import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1c7af6),
        title: const Text(
          'Pantalla 5 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          // Fondo con texto largo
          Text(
            '0' * 10000,
            style: const TextStyle(color: Colors.green),
          ),
          // Efecto de desenfoque centrado
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  color: Colors.white.withOpacity(0.1), // Transparencia
                  child: const Text(
                    'Blur',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          // Botón para regresar (centrado abajo)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
