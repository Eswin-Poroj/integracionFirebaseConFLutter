import 'package:firebase_auth/firebase_auth.dart' as firebase_Auth;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practica_intecap/services/firebaseService.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  firebase_Auth.FirebaseAuth firebaseAuth = firebase_Auth.FirebaseAuth.instance;

  void registrer() async {
    try {
      String username = _usernameController.text;
      String password = _passwordController.text;
      await firebaseAuth.createUserWithEmailAndPassword(email: username, password: password);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Usuario Registrado correctamente')));
      Navigator.pushNamed(context, 'home');
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('La contraseña es muy debil')));
      } else if(e.code == 'email-already-in-use'){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Este correo ya está registrado')));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrer Page'),
      ),
      body: Column(
        
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
            onPressed: (){registrer();}, 
          child: const Text('Registrarse'),),
          const SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                try {
                  UserCredential? datos =  signInWithGoogle();
                } catch (e) {
                  print(e); 
                }
              }, child: child)
              IconButton(
                onPressed: (){
               
                  signInWithGoogle();
                  Navigator.pushNamed(context, 'home');
                },
              icon: Image.network('https://www.flaticon.es/icono-gratis/simbolo-de-google_2875404'),

              ),
            ],
          )
        ],
      ),
    );
  }
}