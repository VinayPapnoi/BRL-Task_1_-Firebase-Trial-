import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/services/firebase_auth_methods.dart';
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

  bool _isLoading = false;

  @override
  void dispose() {
    emailController.dispose();     
    passwordController.dispose();  
    super.dispose();              
  }

  void signUpUser() async {
    setState(() {
      _isLoading = true;
    });

    await context.read<FirebaseAuthMethods>().signUpWithEmail(
          email: emailController.text.trim(),    
          password: passwordController.text.trim(),
          context: context,
        );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 30),
            ),
            CustomTextField(controller: emailController, hintText: 'Email'),
            CustomTextField(controller: passwordController, hintText: 'Password',),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : signUpUser, 
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
