import 'package:flutter/material.dart';
import 'package:french_app/data/dummy_data.dart'; // Importa dummyTutors
import 'package:french_app/models/tutor.dart';
import 'package:french_app/widgets/student_card.dart'; // Importa StudentCard

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'French App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(
          email: 'example@example.com'), // Correo electrónico de ejemplo
    );
  }
}

class MainScreen extends StatelessWidget {
  final String email;

  const MainScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Encuentra al tutor con el correo electrónico proporcionado
    Tutor? tutor = dummyTutors.firstWhere((tutor) => tutor.email == email);

    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Ejemplo'),
      ),
      body: Center(
        child: tutor != null
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dos estudiantes por fila
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: tutor.students.length,
                itemBuilder: (context, index) {
                  return StudentCard(
                    name: tutor.students[index].name,
                    age: tutor.students[index].age,
                    imageUrl: tutor.students[index].imageUrl!,
                  );
                },
              )
            : Text('No se encontró el tutor con el correo electrónico $email'),
      ),
    );
  }
}
