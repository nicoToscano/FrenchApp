import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateStudent(),
    );
  }
}

class CreateStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Ejemplo'),
      ),
      body: Center(
        child: Text(
          'Este es EL CREATE STUDENT',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
