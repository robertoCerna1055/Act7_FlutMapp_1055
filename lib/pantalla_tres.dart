import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8c5adb),
        title: const Text(
          'Pantalla 3 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Para centrar verticalmente
          children: [
            Container(
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
            ),
            const SizedBox(
                height: 20), // Espacio entre el contenedor y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
