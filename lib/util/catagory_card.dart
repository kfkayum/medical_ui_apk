import 'dart:ui';

import 'package:flutter/material.dart';

class CatagoryCard extends StatelessWidget {
  final iconPath;
  final String catagoryname;

  CatagoryCard({required this.iconPath, required this.catagoryname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 50,
            ),
            const SizedBox(width: 10),
            Text(
              catagoryname,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
