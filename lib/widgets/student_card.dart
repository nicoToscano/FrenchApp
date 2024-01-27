import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const StudentCard({
    required this.name,
    required this.age,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: imageUrl.isNotEmpty
                  ? AssetImage(imageUrl)
                  : AssetImage('assets/profile/default-image.png'),
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Edad: $age',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
