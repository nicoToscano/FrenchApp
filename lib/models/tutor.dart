import 'package:french_app/models/User.dart';
import 'package:french_app/models/student.dart';

class Tutor extends User {
  String email;
  String password;
  List<Student> students;

  Tutor(
      {required String name,
      String? imageUrl,
      required this.email,
      required this.password,
      required this.students})
      : super(name: name, imageUrl: imageUrl);
}
