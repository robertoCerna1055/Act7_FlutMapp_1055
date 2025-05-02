import 'package:flutter/material.dart';

class PantallaOnce extends StatelessWidget {
  const PantallaOnce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8a59d7),
        title: const Text(
          'Pantalla 11 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Centrar verticalmente
          children: [
            // Builder para acceder al Theme y luego ajustar tamaño y grosor
            Builder(
              builder: (BuildContext ctx) {
                return Text(
                  'Text with Theme',
                  style: Theme.of(ctx).textTheme.displayLarge!.copyWith(
                        fontSize: 108.0, // Tamaño más grande
                        fontWeight: FontWeight.w100, // Peso más delgado
                      ),
                );
              },
            ),
            const SizedBox(height: 30),
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
