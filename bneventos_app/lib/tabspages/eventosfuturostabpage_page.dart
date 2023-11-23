import 'package:flutter/material.dart';

class EventosFuturosTabPage extends StatelessWidget {
  const EventosFuturosTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text("Eventos Futuros",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
      ),
      body: Center(
        child: Text(
        'Acá van los eventos que estàn futuros como lista ',
        style: TextStyle(fontSize: 24),
      ),
    ),
    );
  }
}