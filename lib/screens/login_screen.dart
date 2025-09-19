import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial/services/firebase_auth_methods.dart';
import 'package:trial/widgets/custom_textfield.dart';
import 'package:trial/widgets/custom_button.dart';
import 'package:trial/screens/signup_email_password_screen.dart';
import 'package:trial/screens/login_email_password_screen.dart';

import '../services/firebase_auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordSignup.routeName);
              },
              text: 'Email/Password Sign Up',
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Email/Passwork Log in',
            ),

            CustomButton(
              onTap: () {
                context.read<FirebaseAuthMethods> ().signInWithGoogle(context);
              },
              text: 'Google Sign in',
            ),
          ],
        ),
      ),
    );
  }
}
