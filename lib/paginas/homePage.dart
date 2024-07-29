import 'package:firebase_practica_intecap/services/firebaseService.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App bar del crud'),),
      body: FutureBuilder(
        future: getPersonas(), 
      builder: (context, snapshot){
        if (snapshot.hasData) {
          return ListView.builder(
            
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data?[index]['nombre']),
                onTap: () async {
                  await Navigator.pushNamed(context, '/edit', arguments: {'nombre':snapshot.data?[index]['nombre'], 'uid':snapshot.data?[index]['uid']});
                  setState(() {
                    
                  });
                },
                
              );
              
          },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
            );
        }
        
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await Navigator.pushNamed(context, '/add');
          setState(() {
            //este set vacio actualiza la pagina de vista
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}