import 'package:flutter/material.dart';
import 'package:french_app/data/dummy_data.dart';
import 'package:french_app/models/tutor.dart';
import 'package:french_app/screens/main_screen.dart';
import 'package:french_app/screens/student/create_student.dart';

class LoginScreen extends StatelessWidget {
  // Dummy data (correo y contraseña)
  final String dummyEmail = 'example@example.com';
  final String dummyPassword = '123456';

  @override
  Widget build(BuildContext context) {
    // Controllers para los campos de texto
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          // Fondo de pantalla
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounds/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/character/gallindo.png',
                        height: 200,
                      ),
                      const SizedBox(height: 48.0),
                      const Text('Correo electrónico',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0)),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      const Text(
                        'Contraseña',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          String enteredEmail = emailController.text;
                          String enteredPassword = passwordController.text;
                          Tutor? foundedTutor;

                          for (var tutor in dummyTutors) {
                            if (tutor.email == enteredEmail &&
                                tutor.password == enteredPassword) {
                              foundedTutor = tutor;
                              break;
                            }
                          }

                          if (foundedTutor != null &&
                              foundedTutor.students.isNotEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MainScreen(email: foundedTutor!.email)),
                            );
                          } else if (foundedTutor != null &&
                              foundedTutor.students.isEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateStudent()),
                            );
                          }
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        color: Colors.blueAccent,
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      MaterialButton(
                        onPressed: () {
                          // Implementar funcionalidad de registro
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        color: Color(0xFF71BADB),
                        child: const Text(
                          'Crear una cuenta',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
