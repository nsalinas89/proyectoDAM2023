
import 'package:app_login/pages/inicio_sesion_page.dart';
import 'package:app_login/providers/autenticacion.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Autenticacion(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: InicioSesionPage(),
      ),
    );
  }
}

