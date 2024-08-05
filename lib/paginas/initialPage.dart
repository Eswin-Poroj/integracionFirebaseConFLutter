import 'package:firebase_practica_intecap/paginas/login.dart';
import 'package:firebase_practica_intecap/paginas/registrer.dart';
import 'package:flutter/material.dart';

class Initialpage extends StatelessWidget {
  const Initialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenLogin()));}, child: const Text('Iniciar Sesión')),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));}, child: const Text('Registrarse')),
          ],
        ),
      ),
    );
  }
}