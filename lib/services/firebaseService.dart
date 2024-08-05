
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//hacer la comunicación con la base de datos
FirebaseFirestore baseDatos = FirebaseFirestore.instance;

Future<List> getPersonas() async {
  List personas = [];
    CollectionReference collectionReferencePersonas = baseDatos.collection('personas');
    // 'personas' es el nombre que está en la coleccion de firebase

    // devuelve la coleccion de datos
    QuerySnapshot queryPersonas = await collectionReferencePersonas.get();

  //queryPersonas.docs.forEach((documento){
  //  personas.add(documento.data());
  //});

  for (var doc in queryPersonas.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String,dynamic>;
    final person = {
      'nombre' : data['nombre'],
      'uid' : doc.id,
    };
    personas.add(person);
  }
  Future.delayed(const Duration(seconds: 5));
  return personas;
}
// agregar un delay por si acaso es necesario mas tiempo por conexion de datos


//Agregar datos
Future<void> agregandoPersonas(String nombre) async {
  await baseDatos.collection('personas').add({'nombre' : nombre}); // se manda por parametro el nombre guardar
}

//Actualizar datos
Future<void> actualizarDatos(String uid, String nuevoNombre) async {
  await baseDatos.collection('personas').doc(uid).set({'nombre':nuevoNombre});
}

//Eliminar Datos
Future<void> eliminarDatos(String uid) async {
  await baseDatos.collection('personas').doc(uid).delete();
}

//iniciar sesión
Future<void> iniciarSesion(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
  } catch (e) {
    print('Error en $e');
  }
}

//registrar con google
Future<UserCredential> signInWithGoogle() async {
  
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleProvider.setCustomParameters({
    'login_hint' : 'user@example.com'
  });

  
  //return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
  return await FirebaseAuth.instance.signInWithPopup(googleProvider); 
  
}