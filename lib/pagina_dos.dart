import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar personalizado
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Acción del menú
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Acción de notificaciones
            },
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),

      // Cuerpo de PantallaOnce con texto negro y botón
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Centrado vertical
          children: [
            const Text(
              'Body',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black, // Texto en negro
              ),
            ),
            const SizedBox(height: 170),
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
