import 'package:firebase_practica_intecap/paginas/agregarDatos.dart';
import 'package:firebase_practica_intecap/paginas/editarDatos.dart';
import 'package:firebase_practica_intecap/paginas/homePage.dart';
import 'package:flutter/material.dart';
//importando los paquetes para trabajar con firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//modificamos void main oara inicializar el servicio con firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Crud Firebase',
      initialRoute: '/',
      routes: {
        '/':(context)=> const Home(),
        '/add' : (context) => const AgregarNombrePagina(),
        '/edit' : (context) => const Editardatos(),
      },
    );
  }
}

