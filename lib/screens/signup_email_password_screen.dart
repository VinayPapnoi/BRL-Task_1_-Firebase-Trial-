import 'package:flutter/material.dart';
import 'package:trial/widgets/custom_textfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routeName = '/signup-email-password';
  const EmailPasswordSignup({super.key});

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() {
    /*context.read<FirebaseAuthMethods>().signUpWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
    );
    */
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center everything on screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign Up", style: TextStyle(fontSize: 24)),
            CustomTextField(controller: emailController, hintText: 'Email'),
            CustomTextField(
              controller: passwordController,
              hintText: 'Password',
            ),
            ElevatedButton(onPressed: signUpUser, child: const Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
