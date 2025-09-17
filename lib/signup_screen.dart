import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Jai Hind Seniors',
              style: TextStyle(
                color: Color.fromRGBO(100, 200, 50, 1),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                //color: Color.fromRGBO(255, 0, 0, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

