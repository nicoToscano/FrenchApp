import 'package:french_app/models/student.dart';
import 'package:french_app/models/tutor.dart';

export 'dummy_data.dart';

final List<Tutor> dummyTutors = [
  Tutor(
    name: 'Tutor inicial 1',
    imageUrl: 'assets/images/tutor1.jpg',
    email: 'tutor1@fa.com',
    password: '123',
    students: [
      Student(
        name: 'Student inicial 1',
        imageUrl: '',
        age: 10,
      ),
      Student(
        name: 'Student inicial 2',
        imageUrl: '',
        age: 10,
      ),
      Student(
        name: 'Student inicial 3',
        imageUrl: '',
        age: 10,
      ),
      Student(
        name: 'Student inicial 4',
        imageUrl: '',
        age: 10,
      ),
      Student(
        name: 'Student inicial 5',
        imageUrl: '',
        age: 10,
      ),
    ],
  ),
  Tutor(
    name: 'Tutor inicial 2',
    imageUrl: '',
    email: 'tutor2@fa.com',
    password: '123',
    students: [],
  ),
];
