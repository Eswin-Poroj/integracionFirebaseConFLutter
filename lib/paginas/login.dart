import 'package:firebase_practica_intecap/services/firebaseService.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController =TextEditingController();

void login()async {
  try {
    String username = _usernameController.text;
    String password = _passwordController.text;
    iniciarSesion(username, password);
    Navigator.pushNamed(context, 'home');
    
  } catch (e) {
    print('Error en: $e');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Text('Username'),
          TextField(
            controller: _usernameController,
          ), 
          const SizedBox( height: 10,),
          
          const Text('Password'),
          TextField(
            controller: _passwordController,
          ), 
          const SizedBox( height: 10,),
          ElevatedButton(
            onPressed: (){login();}, 
          child: const Text('Iniciar Sesíon'),),
          ],
        ),
      ),
    );
  }
}