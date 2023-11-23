import 'package:flutter/material.dart';

class EventosActivosTabPage extends StatelessWidget {
  const EventosActivosTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Eventos Activos",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
      ),
      body: Center(
        child: Text(
        'Acá van los eventos que estàn activos como lista',
        style: TextStyle(fontSize: 24),
      ),
    ),);
  }
}