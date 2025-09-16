import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

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
