import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final doctorProfilePath;
  final rating;
  final doctorName;
  final doctorProfession;

  DoctorCard({
    required this.doctorProfilePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            // doctor Image

            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[300],
              child: CircleAvatar(
                backgroundImage: AssetImage(doctorProfilePath),
                radius: 50,
              ),
            ),

            //rating out
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                const SizedBox(width: 10),
                Text(
                  rating,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // doctor name
            Text(
              doctorName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            // doctor title
            Text(
              doctorProfession,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
