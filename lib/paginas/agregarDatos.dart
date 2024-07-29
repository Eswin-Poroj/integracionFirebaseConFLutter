import 'package:flutter/material.dart';
import 'package:firebase_practica_intecap/services/firebaseService.dart';

class AgregarNombrePagina extends StatefulWidget {
  const AgregarNombrePagina({super.key});

  @override
  State<AgregarNombrePagina> createState() => _AgregarNombrePaginaState();
}

class _AgregarNombrePaginaState extends State<AgregarNombrePagina> {
  TextEditingController nombreController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar nombre'),),
      body: Padding(padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              hintText: 'Ingrese el nuevo nombre',
            ),
          ), ElevatedButton(
            onPressed: () async {
              //se usa then para enviar la función navigator cuando el future termine
            await agregandoPersonas(nombreController.text).then((_){
              Navigator.pop(context);//cierra la pantalla y regresa a la anterior
            });
          }, child: const Text('Guardar Datos'),
          ),
        ],
      ),),
    );
  }
}