import 'package:flutter/material.dart';

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  State<PantallaOcho> createState() => _PantallaOchoState();
}

class _PantallaOchoState extends State<PantallaOcho> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd06565),
        title: const Text(
          'Pantalla 8 Cerna',
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
            OutlinedButton(
              child: const Text('Mostrar tarjeta'),
              onPressed: () => setState(() {
                isShow = true;
              }),
            ),
            const SizedBox(height: 20),
            if (isShow)
              BlockSemantics(
                blocking: true,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Esta es una tarjeta',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        TextButton(
                          child: const Text('Cerrar'),
                          onPressed: () => setState(() {
                            isShow = false;
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
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
