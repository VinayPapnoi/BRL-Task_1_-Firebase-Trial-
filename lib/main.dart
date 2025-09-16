import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  // add this
import 'package:currency_converter/currency_converter_material_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // initialize Firebase

  // Quick connection check
  if (Firebase.apps.isNotEmpty) {
    print("✅ Firebase is connected");
  } else {
    print("❌ Firebase is NOT connected");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
