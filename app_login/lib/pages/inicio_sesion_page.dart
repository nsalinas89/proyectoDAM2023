import 'package:app_login/pages/eventos_bn_page.dart';
import 'package:app_login/pages/login_usuario_page.dart';
import 'package:app_login/services/google_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class InicioSesionPage extends StatelessWidget {
  
  final GoogleAuthService googleAuthService = GoogleAuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: Text('Bienvenido',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF831B05),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                User? authenticatedUser = await googleAuthService.iniciarsesionGoogle();
                if (authenticatedUser != null) {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => LoginUsuarioPage(
                        user: authenticatedUser, 
                        googleAuthService: googleAuthService),
                        ),
                        );
                } else {
                  print('Ha fallado en el inicio de sesión');
                }
              },
              child: Text('Iniciar Sesión con Google'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => EventosBNPage(
              ),
              ),
              );
            }, 
            child: Text('Entrar como Invitado'),
            ),
          ],
        ),

      ),);
  }
}

