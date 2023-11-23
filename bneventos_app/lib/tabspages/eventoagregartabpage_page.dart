import 'package:flutter/material.dart';

class EventoAgregarTabPage extends StatefulWidget {
  const EventoAgregarTabPage({super.key});

  @override
  State<EventoAgregarTabPage> createState() => _EventoAgregarTabPageState();
}

class _EventoAgregarTabPageState extends State<EventoAgregarTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Agregar Evento",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
      ),
      body: Center(
        child: Text(
        'Acá se agregarán los eventos con los atributos que pide el profe en el pdf, aunque se puede agregar alguno como la capacidad del recinto, si hay entradas disponibles o están agotadas',
        style: TextStyle(fontSize: 24),
      ),
    ),
    );
  }
}