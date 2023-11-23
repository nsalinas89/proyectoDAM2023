import 'package:bneventos_app/tabspages/eventoagregartabpage_page.dart';
import 'package:bneventos_app/tabspages/eventosactivostabpage_page.dart';
import 'package:bneventos_app/tabspages/eventosfuturostabpage_page.dart';
import 'package:bneventos_app/tabspages/eventospasadostabpage_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventosBNPage extends StatefulWidget {
  const EventosBNPage({super.key});

  @override
  State<EventosBNPage> createState() => _EventosBNPageState();
}

class _EventosBNPageState extends State<EventosBNPage> {

  int paginaSeleccionada = 0;
  Widget pagina = EventosPasadosTabPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Eventos "La confrontación" ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: pagina,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
        currentIndex: paginaSeleccionada,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            label: 'Eventos Pasados',
            icon: Icon(MdiIcons.closeOutline),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            label: 'Eventos Activos',
            icon: Icon(MdiIcons.giftOpenOutline),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            label: 'Eventos Futuros',
            icon: Icon(MdiIcons.giftOutline),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            label: 'Agregar Evento',
            icon: Icon(MdiIcons.clockTimeElevenOutline),
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (index) {
          
          setState(() {
            this.paginaSeleccionada = index;

            switch (this.paginaSeleccionada) {
              case 0:
                pagina = EventosPasadosTabPage();
                break;
              case 1:
                pagina = EventosActivosTabPage();
                break;
              case 2:
                pagina = EventosFuturosTabPage();
                break;
              case 3:
                pagina = EventoAgregarTabPage()  ;
                break;
            }
          });
        },
      ),);
  }
}