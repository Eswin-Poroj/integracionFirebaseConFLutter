import 'package:flutter/material.dart';
import 'package:firebase_practica_intecap/services/firebaseService.dart';

class Editardatos extends StatefulWidget {
  const Editardatos({super.key});

  @override
  State<Editardatos> createState() => _EditardatosState();
}

class _EditardatosState extends State<Editardatos> {

  TextEditingController nombreController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //recibir los datos de la pantalla anterior
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nombreController.text = arguments['nombre'];
    return Scaffold(
      appBar: AppBar(title: const Text('Actualizar datos'),),
      body: Padding(padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              hintText: 'Modifique el dato',
            ),
          ), ElevatedButton(
            onPressed: () async {
              //se usa then para enviar la función navigator cuando el future termine
            await actualizarDatos(arguments['uid'], nombreController.text).then((_){
              Navigator.pop(context);//cierra la pantalla y regresa a la anterior
            });
          }, child: const Text('Actualizar Datos'),
          ),
        ],
      ),),
    );
  }
}