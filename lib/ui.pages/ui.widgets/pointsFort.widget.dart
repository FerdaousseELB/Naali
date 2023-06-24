import 'package:flutter/material.dart';

class PointsFort extends StatelessWidget {
  const PointsFort({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.grade),
                    SizedBox(height: 10),
                    Text('Texte 1'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.https_outlined),
                    SizedBox(height: 10),
                    Text('Texte 2'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
