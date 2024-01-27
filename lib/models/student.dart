import 'package:french_app/models/User.dart';

class Student extends User {
  int age;

  Student({required String name, String? imageUrl, required this.age})
      : super(name: name, imageUrl: imageUrl);
}
