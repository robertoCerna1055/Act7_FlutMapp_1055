import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8c5adb),
        title: const Text(
          'Pantalla 10 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Botón para abrir la ventana modal
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[600], // gris medio
                foregroundColor: Colors.white, // texto blanco
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Pantalla modal el blanco'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext ctx) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Cerrar'),
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            const SizedBox(height: 20),

            // Botón para regresar
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
