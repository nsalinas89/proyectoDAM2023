import 'package:flutter/material.dart';

class EventosPasadosTabPage extends StatelessWidget {
  const EventosPasadosTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("Eventos Pasados",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
      ),
      body: Center(
        child: Text(
        'Acá van los eventos que ya pasaron como lista, lo ideal serìa llamar al widget que lo haga',
        style: TextStyle(fontSize: 24),
      ),
    ),
    );
  }
}